.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private associatedText:[B

.field private blockSize:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private data:Ljava/io/ByteArrayOutputStream;

.field private forEncryption:Z

.field private keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 10

    const/4 v9, 0x0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v1, v6, v7}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/16 v6, 0x10

    new-array v0, v6, [B

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_0

    aget-byte v6, v0, v9

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    :cond_0
    aget-byte v6, v0, v9

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    div-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    aget-byte v6, v0, v9

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v7, v7

    rsub-int/lit8 v7, v7, 0xf

    add-int/lit8 v7, v7, -0x1

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v8, v8

    invoke-static {v6, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, p3

    const/4 v2, 0x1

    :goto_0
    if-lez v5, :cond_1

    array-length v6, v0

    sub-int/2addr v6, v2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    ushr-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v6, v0

    invoke-interface {v1, v0, v9, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    const v7, 0xff00

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v3, 0x2

    :goto_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v7, v7

    invoke-interface {v1, v6, v9, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    add-int/2addr v6, v3

    rem-int/lit8 v3, v6, 0x10

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :goto_2
    rsub-int/lit8 v6, v3, 0x10

    if-eq v4, v6, :cond_3

    invoke-interface {v1, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v6, -0x2

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v3, 0x6

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {v1, p4, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v6

    return v6
.end method

.method private hasAssociatedText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    array-length v2, v0

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    :goto_0
    return-void

    :cond_0
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid parameters passed to CCM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "CCM cipher unitialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v8}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v8, [B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v8, v8

    rsub-int/lit8 v8, v8, 0xf

    add-int/lit8 v8, v8, -0x1

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v10, v10

    invoke-static {v8, v11, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v9, v10, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v2, v8, v9}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v8, :cond_3

    move v4, p2

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v8, p3

    new-array v6, v8, [B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_0
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v8, p3, v8

    if-ge v4, v8, :cond_1

    invoke-interface {v2, p1, v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    sub-int v8, p3, v4

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v0, v11, v0, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int v8, p3, v4

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v8, p3, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v9, v6

    sub-int/2addr v9, v7

    invoke-static {v8, v11, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v6

    :cond_3
    move v4, p2

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v8, p3, v8

    new-array v6, v8, [B

    add-int v8, p2, p3

    iget v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {p1, v8, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_1
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v8, v8

    if-eq v3, v8, :cond_4

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v11, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    array-length v8, v6

    iget v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_5

    invoke-interface {v2, p1, v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v0, v11, v0, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v8, [B

    array-length v8, v6

    invoke-direct {p0, v6, v11, v8, v1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "mac check in CCM failed"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
