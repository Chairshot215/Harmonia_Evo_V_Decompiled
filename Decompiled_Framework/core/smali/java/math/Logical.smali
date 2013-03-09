.class Ljava/math/Logical;
.super Ljava/lang/Object;
.source "Logical.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_2

    :cond_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, p1

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4

    invoke-static {p0, p1}, Ljava/math/Logical;->andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    invoke-static {p1, p0}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_7

    invoke-static {p0, p1}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-static {p1, p0}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v6, :cond_0

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v6

    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v4, v5, [I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v0, v6, :cond_3

    :goto_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v3, v2, :cond_1

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    and-int v0, v6, v7

    :goto_1
    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :goto_2
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-ge v3, v2, :cond_2

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    goto :goto_1

    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    :goto_3
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v5, v6, 0x1

    new-array v4, v5, [I

    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    aput v7, v4, v6

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0

    :cond_5
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v4, v5, [I

    neg-int v6, v0

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    :goto_4
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_6

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_7

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4

    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v6

    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    new-array v4, v5, [I

    move v0, v2

    if-ge v2, v1, :cond_4

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_3

    :goto_2
    if-ge v0, v1, :cond_2

    const/4 v6, -0x1

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    :goto_3
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :goto_4
    if-ge v0, v3, :cond_6

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    :cond_4
    if-ge v1, v2, :cond_5

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    :cond_5
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    :cond_6
    :goto_5
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_7

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v2

    if-le v3, v2, :cond_2

    new-array v5, v6, [I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_7

    move v1, v3

    :goto_2
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_7

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    and-int v0, v7, v8

    if-nez v0, :cond_6

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-ge v1, v4, :cond_3

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    if-nez v0, :cond_6

    :goto_4
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_4

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    if-nez v0, :cond_6

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0

    :cond_6
    new-array v5, v6, [I

    neg-int v7, v0

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_6
    if-ge v1, v4, :cond_8

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_9

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_a

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v2, v3, [I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v3, v4, v5, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [I

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_2
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lt v0, v2, :cond_0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v3

    :cond_0
    new-array v1, v2, [I

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static not(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, -0x1

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_0

    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_4

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eq v2, v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    aput v2, v1, v0

    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-nez v2, :cond_5

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_4
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object p0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_3

    move-object p0, p1

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_4

    invoke-static {p0, p1}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_7

    invoke-static {p1, p0}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_8

    invoke-static {p1, p0}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    new-array v4, v5, [I

    if-ge v1, v2, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ge v2, v1, :cond_6

    move v0, v2

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-eq v0, v6, :cond_4

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_4
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_5
    if-ge v0, v3, :cond_7

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    if-ge v0, v1, :cond_5

    aput v8, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_3

    :cond_6
    move v0, v2

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    neg-int v6, v6

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    :goto_7
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_8

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v5, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [I

    if-ne v1, v2, :cond_2

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v2

    neg-int v5, v5

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v2

    neg-int v6, v6

    or-int/2addr v5, v6

    neg-int v5, v5

    aput v5, v3, v2

    move v0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v4, :cond_4

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_3

    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/math/BigInteger;

    const/4 v5, -0x1

    invoke-direct {p1, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    or-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_4

    invoke-static {p0, p1}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_7

    invoke-static {p1, p0}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_8

    invoke-static {p1, p0}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10

    const/4 v9, -0x1

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-array v5, v6, [I

    move v1, v2

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_3

    :goto_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ge v3, v2, :cond_6

    new-array v5, v6, [I

    move v1, v3

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    aput v7, v5, v1

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v4, :cond_2

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_4

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_3
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_b

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v1, v2, :cond_5

    aput v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_3

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move v1, v2

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int v0, v7, v8

    if-nez v0, :cond_a

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    :goto_7
    if-ge v1, v4, :cond_7

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    xor-int v0, v7, v8

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    if-nez v0, :cond_a

    :goto_8
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_8

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_9

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    if-nez v0, :cond_a

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    :goto_a
    return-object v7

    :cond_a
    new-array v5, v6, [I

    neg-int v7, v0

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_b
    :goto_b
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_c

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_d

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_a
.end method

.method static xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v4, v5, [I

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    move v0, v1

    if-ne v2, v1, :cond_0

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    xor-int/2addr v6, v7

    aput v6, v4, v0

    :goto_0
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_1

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_3

    :goto_3
    if-ge v0, v2, :cond_2

    const/4 v6, -0x1

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_0

    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    xor-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_0

    :cond_4
    :goto_4
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_6

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v6
.end method

.method static xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v1, v2, [I

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method
