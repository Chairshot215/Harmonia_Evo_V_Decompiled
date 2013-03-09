.class public Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    const/4 v5, 0x0

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v1, v0, v2

    if-le p3, v1, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void
.end method
