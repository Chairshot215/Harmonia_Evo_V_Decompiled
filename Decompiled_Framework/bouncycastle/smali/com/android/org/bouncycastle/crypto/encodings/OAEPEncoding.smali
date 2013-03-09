.class public Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lcom/android/org/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8

    const/4 v7, 0x0

    new-array v3, p4, [B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    const/4 v4, 0x4

    new-array v0, v4, [B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    div-int v4, p4, v4

    if-lt v1, v4, :cond_0

    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    array-length v6, v1

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    new-array v0, v6, [B

    array-length v6, v0

    array-length v7, v1

    sub-int/2addr v6, v7

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v6, v0

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_2

    aget-byte v6, v0, v2

    aget-byte v7, v3, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v0, v9, v6, v7}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v6

    :goto_2
    array-length v6, v0

    if-eq v2, v6, :cond_3

    aget-byte v6, v0, v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int v7, v2, v7

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_5

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v6, v6, v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    add-int/2addr v7, v2

    aget-byte v7, v0, v7

    if-eq v6, v7, :cond_4

    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data hash wrong"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/lit8 v5, v6, 0x2

    :goto_4
    array-length v6, v0

    if-eq v5, v6, :cond_6

    aget-byte v6, v0, v5

    if-eqz v6, :cond_8

    :cond_6
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_7

    aget-byte v6, v0, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    :cond_7
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data start wrong "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    array-length v6, v0

    sub-int/2addr v6, v5

    new-array v4, v6, [B

    array-length v6, v4

    invoke-static {v0, v5, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public encodeBlock([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_0

    aget-byte v4, v0, v1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_1

    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    return-void

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
