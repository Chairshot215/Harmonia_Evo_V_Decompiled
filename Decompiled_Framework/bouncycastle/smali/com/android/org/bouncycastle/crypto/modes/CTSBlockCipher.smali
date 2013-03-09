.class public Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v10, 0x0

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    array-length v8, p1

    if-le v7, v8, :cond_0

    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer to small in doFinal"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v5, v7, v1

    new-array v0, v1, [B

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_1

    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for CTS"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v7, v7

    if-eq v3, v7, :cond_2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_3

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v8, v7, v3

    sub-int v9, v3, v1

    aget-byte v9, v0, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v7, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_2
    add-int v7, p2, v1

    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    return v6

    :cond_4
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    :cond_5
    new-array v4, v1, [B

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v7, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_4
    move v3, v1

    :goto_5
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_7

    sub-int v7, v3, v1

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v9, v9, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_4

    :cond_7
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v5, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x0

    if-gez p3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    if-lez v2, :cond_1

    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    if-le p3, v1, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    return v3
.end method
