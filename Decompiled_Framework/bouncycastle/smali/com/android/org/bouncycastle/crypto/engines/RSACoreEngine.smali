.class Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private forEncryption:Z

.field private key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p3, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    array-length v2, p1

    if-eq p3, v2, :cond_3

    :cond_2
    new-array v0, p3, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_4

    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, p1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    new-array v1, v2, [B

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    aget-byte v2, v0, v4

    if-nez v2, :cond_2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getInputBlockSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    :goto_0
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    return-void

    :cond_0
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_0
.end method

.method public processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v10, v10, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v1, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_0
.end method
