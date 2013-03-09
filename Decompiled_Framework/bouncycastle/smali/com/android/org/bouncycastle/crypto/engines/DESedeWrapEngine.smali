.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-array v0, v4, [B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .locals 4

    array-length v2, p0

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    const/16 v4, 0x8

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    :goto_0
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_2

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_0

    new-array v2, v4, [B

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0

    :cond_2
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v2

    if-eq v2, v4, :cond_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IV is not 8 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You should not supply an IV for unwrapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unwrap([BII)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Not set for unwrapping"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    if-nez p1, :cond_1

    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v11, "Null pointer as ciphertext"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v6

    rem-int v10, p3, v6

    if-eqz v10, :cond_2

    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ciphertext not multiple of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v8, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    move/from16 v0, p3

    new-array v4, v0, [B

    const/4 v7, 0x0

    :goto_0
    move/from16 v0, p3

    if-eq v7, v0, :cond_3

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v11, p2, v7

    invoke-virtual {v10, p1, v11, v4, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v7, v6

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v3

    const/16 v10, 0x8

    new-array v10, v10, [B

    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v10, v3

    add-int/lit8 v10, v10, -0x8

    new-array v2, v10, [B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v3, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    array-length v12, v3

    add-int/lit8 v12, v12, -0x8

    invoke-static {v3, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v10, v11, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10, v11, v12}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    array-length v10, v2

    new-array v5, v10, [B

    const/4 v7, 0x0

    :goto_1
    array-length v10, v5

    if-eq v7, v10, :cond_4

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10, v2, v7, v5, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v7, v6

    goto :goto_1

    :cond_4
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    new-array v9, v10, [B

    const/16 v10, 0x8

    new-array v1, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v5

    add-int/lit8 v12, v12, -0x8

    invoke-static {v5, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v9, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v11, "Checksum inside ciphertext is corrupted"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    return-object v9
.end method

.method public wrap([BII)[B
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not initialized for wrapping"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    move/from16 v0, p3

    new-array v10, v0, [B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v10, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v3

    array-length v12, v10

    array-length v13, v3

    add-int/2addr v12, v13

    new-array v7, v12, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v10, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    array-length v13, v10

    array-length v14, v3

    invoke-static {v3, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v8

    array-length v12, v7

    rem-int/2addr v12, v8

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not multiple of block length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v12, v13, v14}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    array-length v12, v7

    new-array v4, v12, [B

    const/4 v9, 0x0

    :goto_0
    array-length v12, v7

    if-eq v9, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v7, v9, v4, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v9, v8

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v12, v12

    array-length v13, v4

    add-int/2addr v12, v13

    new-array v5, v12, [B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v12, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v13, v13

    array-length v14, v4

    invoke-static {v4, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v6

    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v13, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v11, v12, v13}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v9, 0x0

    :goto_1
    array-length v12, v6

    if-eq v9, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v6, v9, v6, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v9, v8

    goto :goto_1

    :cond_3
    return-object v6
.end method
