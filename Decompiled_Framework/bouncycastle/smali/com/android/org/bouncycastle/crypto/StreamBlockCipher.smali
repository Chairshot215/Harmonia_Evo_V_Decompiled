.class public Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private oneByte:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "block cipher block size != 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too small in processBytes()"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v2, p2, v0

    add-int v3, p5, v0

    invoke-interface {v1, p1, v2, p4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public returnByte(B)B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    aput-byte p1, v0, v3

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    aget-byte v0, v0, v3

    return v0
.end method
