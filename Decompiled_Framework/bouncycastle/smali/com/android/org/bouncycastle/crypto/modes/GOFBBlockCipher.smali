.class public Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;
.super Ljava/lang/Object;
.source "GOFBBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field static final C1:I = 0x1010104

.field static final C2:I = 0x1010101


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    return-void
.end method

.method private bytesToint([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    array-length v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    if-eqz v1, :cond_2

    iput-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v6}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    :cond_2
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v2, 0x1010101

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    const v2, 0x1010104

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v6}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    add-int v1, p4, v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
