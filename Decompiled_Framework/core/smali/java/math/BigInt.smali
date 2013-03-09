.class final Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# instance fields
.field transient bignum:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    return-void
.end method

.method private static Check(Z)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(openssl)ERR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/math/BigInt;->consumeErrors(Ljava/lang/StringBuilder;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_add(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_exp(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .locals 2

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_cmp(II)I

    move-result v0

    return v0
.end method

.method static consumeErrors(Ljava/lang/StringBuilder;)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/math/NativeBN;->ERR_get_error()I

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit16 v2, v1, 0xff

    const/16 v4, 0x67

    if-ne v2, v4, :cond_0

    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "BigInteger division by zero"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1

    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "BigInteger not invertible"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/16 v4, 0x41

    if-ne v2, v4, :cond_2

    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/math/NativeBN;->ERR_error_string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-direct {p2}, Ljava/math/BigInt;->makeValid()V

    iget v0, p2, Ljava/math/BigInt;->bignum:I

    :goto_0
    if-eqz p3, :cond_1

    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    iget v1, p3, Ljava/math/BigInt;->bignum:I

    :goto_1
    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_div(IIII)Z

    move-result v2

    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static exp(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 3

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putLongInt(J)V

    invoke-static {p0, v0}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    return-object v1
.end method

.method static gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_gcd(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static generatePrimeDefault(I)Ljava/math/BigInt;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget v0, v6, Ljava/math/BigInt;->bignum:I

    move v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_generate_prime_ex(IIZIII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-object v6
.end method

.method private invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeValid()V
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/math/NativeBN;->BN_new()I

    move-result v0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 5

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    iget v4, p2, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3, v4}, Ljava/math/NativeBN;->BN_mod_exp(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_mod_inverse(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_nnmod(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .locals 2

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-static {}, Ljava/math/NativeBN;->BN_new()I

    move-result v1

    iput v1, v0, Ljava/math/BigInt;->bignum:I

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_mul(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .locals 2

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Ljava/math/NativeBN;->BN_mod_word(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 3

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, p1}, Ljava/math/NativeBN;->BN_shift(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 4

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_sub(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    return-object v0
.end method

.method private static toAscii(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0x9

    if-gt v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x30

    int-to-char v0, v5

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method add(Ljava/math/BigInt;)V
    .locals 3

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    iget v2, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_add(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method addPositiveInt(I)V
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_add_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method bigEndianMagnitude()[B
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2bin(I)[B

    move-result-object v0

    return-object v0
.end method

.method bitLength()I
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->bitLength(I)I

    move-result v0

    return v0
.end method

.method checkString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    sub-int v4, v1, v2

    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_2
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_4
    const/16 v4, 0x80

    if-le v0, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Ljava/math/BigInt;->toAscii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method copy()Ljava/math/BigInt;
    .locals 1

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    return-object v0
.end method

.method decString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2dec(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_free(I)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeBIGNUM()I
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    return v0
.end method

.method hexString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2hex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBitSet(I)Z
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_is_bit_set(II)Z

    move-result v0

    return v0
.end method

.method isPrime(I)Z
    .locals 2

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljava/math/NativeBN;->BN_is_prime_ex(III)Z

    move-result v0

    return v0
.end method

.method littleEndianIntsMagnitude()[I
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->bn2litEndInts(I)[I

    move-result-object v0

    return-object v0
.end method

.method longInt()J
    .locals 2

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->longInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method multiplyByPositiveInt(I)V
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_mul_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putBigEndian([BZ)V
    .locals 2

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Ljava/math/NativeBN;->BN_bin2bn([BIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putBigEndianTwosComplement([B)V
    .locals 2

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, v1}, Ljava/math/NativeBN;->twosComp2bn([BII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putCopy(Ljava/math/BigInt;)V
    .locals 2

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_copy(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putDecString(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v2, v0}, Ljava/math/NativeBN;->BN_dec2bn(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method putHexString(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v2, v0}, Ljava/math/NativeBN;->BN_hex2bn(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method putLittleEndianInts([IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Ljava/math/NativeBN;->litEndInts2bn([IIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putLongInt(J)V
    .locals 1

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2}, Ljava/math/NativeBN;->putLongInt(IJ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method putULongInt(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2, p3}, Ljava/math/NativeBN;->putULongInt(IJZ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method setSign(I)V
    .locals 2

    if-lez p1, :cond_1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_set_negative(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_0

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_set_negative(II)V

    goto :goto_0
.end method

.method shift(I)V
    .locals 2

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_shift(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    return-void
.end method

.method sign()I
    .locals 1

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->sign(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method twosCompFitsIntoBytes(I)Z
    .locals 2

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1}, Ljava/math/NativeBN;->bitLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
