.class public Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v4, p2, v1

    invoke-interface {v2, v3, v5, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    :goto_0
    return v1

    :cond_2
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    throw v2
.end method

.method public getOutputSize(I)I
    .locals 4

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_0
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

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x0

    if-gez p3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

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

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    iput v6, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

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
