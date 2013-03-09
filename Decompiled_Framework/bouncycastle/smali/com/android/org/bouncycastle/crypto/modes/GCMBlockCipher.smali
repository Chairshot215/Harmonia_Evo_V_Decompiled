.class public Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final ZEROES:[B


# instance fields
.field private A:[B

.field private H:[B

.field private J0:[B

.field private S:[B

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private forEncryption:Z

.field private initS:[B

.field private keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void
.end method

.method private gCTRBlock([BI[BI)V
    .locals 8

    const/4 v6, 0x0

    const/16 v2, 0xf

    :goto_0
    const/16 v4, 0xc

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aput-byte v0, v4, v2

    if-eqz v0, :cond_1

    :cond_0
    const/16 v4, 0x10

    new-array v3, v4, [B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v4, v5, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    rsub-int/lit8 v5, p2, 0x10

    invoke-static {v4, p2, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :goto_1
    add-int/lit8 v2, p2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    aget-byte v4, v3, v2

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int v4, p4, v2

    aget-byte v5, v3, v2

    aput-byte v5, p3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v4, v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private gHASH([B)[B
    .locals 6

    const/16 v5, 0x10

    new-array v1, v5, [B

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-array v0, v5, [B

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v4, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static packLength(J[BI)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    long-to-int v0, p0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method private process(B[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v2, v3

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method private static xor([B[B)V
    .locals 3

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const-wide/16 v11, 0x8

    const/16 v10, 0x10

    const/4 v9, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v1, v6, :cond_0

    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v1, v6

    :cond_1
    if-lez v1, :cond_2

    new-array v5, v10, [B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v6, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v5, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    :cond_2
    new-array v0, v10, [B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    array-length v6, v6

    int-to-long v6, v6

    mul-long/2addr v6, v11

    invoke-static {v6, v7, v0, v9}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    iget-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v6, v11

    const/16 v8, 0x8

    invoke-static {v6, v7, v0, v8}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    new-array v4, v10, [B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v6, v7, v9, v4, v9}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    move v3, v1

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v9, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v6

    :cond_3
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v3

    :cond_4
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v2, v6, [B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v1, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v6, v2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "mac check in GCM failed"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/16 v5, 0x10

    const/4 v8, 0x0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v4, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    const/16 v4, 0x60

    if-lt v2, v4, :cond_0

    const/16 v4, 0x80

    if-gt v2, v4, :cond_0

    rem-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    div-int/lit8 v4, v2, 0x8

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    :goto_0
    if-eqz p1, :cond_5

    move v1, v5

    :goto_1
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    if-ge v4, v9, :cond_6

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "IV must be at least 1 byte"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_4

    move-object v3, p2

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid parameters passed to GCM"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v1, v4, 0x10

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    if-nez v4, :cond_7

    new-array v4, v8, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    :cond_7
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v4, v9, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    new-array v4, v5, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    sget-object v6, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6, v8, v7, v8}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_8

    new-array v4, v5, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v6, v6

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v5, 0xf

    aput-byte v9, v4, v5

    :goto_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    iput v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    :cond_8
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    new-array v0, v5, [B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    const/16 v6, 0x8

    invoke-static {v4, v5, v0, v6}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v4, v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    goto :goto_2
.end method

.method public processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v3, p5, v1

    invoke-direct {p0, v2, v6, p4, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v1, v1, 0x10

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return-void
.end method
