.class public Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-void

    nop

    :array_0
    .array-data 0x1
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    :cond_1
    return-void

    :cond_2
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "not set for unwrapping"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    div-int/lit8 v6, p3, 0x8

    mul-int/lit8 v9, v6, 0x8

    if-eq v9, p3, :cond_1

    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int v9, p3, v9

    new-array v1, v9, [B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    new-array v0, v9, [B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/lit8 v9, v9, 0x8

    new-array v2, v9, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {p1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, p3, v11

    invoke-static {p1, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x5

    :goto_0
    if-ltz v4, :cond_4

    move v3, v6

    :goto_1
    const/4 v9, 0x1

    if-lt v3, v9, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v0, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    const/16 v11, 0x8

    invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v9, v6, v4

    add-int v7, v9, v3

    const/4 v5, 0x1

    :goto_2
    if-eqz v7, :cond_2

    int-to-byte v8, v7

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v5

    aget-byte v10, v2, v9

    xor-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    ushr-int/lit8 v7, v7, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v2, v10, v2, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, 0x8

    add-int/lit8 v10, v3, -0x1

    mul-int/lit8 v10, v10, 0x8

    const/16 v11, 0x8

    invoke-static {v2, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "checksum failed"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    return-object v1
.end method

.method public wrap([BII)[B
    .locals 12

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "not set for wrapping"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    div-int/lit8 v5, p3, 0x8

    mul-int/lit8 v8, v5, 0x8

    if-eq v8, p3, :cond_1

    new-instance v8, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v9, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/2addr v8, p3

    new-array v0, v8, [B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/lit8 v8, v8, 0x8

    new-array v1, v8, [B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {p1, v8, v0, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v8, v9, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x6

    if-eq v3, v8, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v5, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v8, v2, 0x8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/16 v10, 0x8

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v1, v9, v1, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v8, v5, v3

    add-int v6, v8, v2

    const/4 v4, 0x1

    :goto_2
    if-eqz v6, :cond_2

    int-to-byte v7, v6

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    sub-int/2addr v8, v4

    aget-byte v9, v1, v8

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    ushr-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x8

    mul-int/lit8 v9, v2, 0x8

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
