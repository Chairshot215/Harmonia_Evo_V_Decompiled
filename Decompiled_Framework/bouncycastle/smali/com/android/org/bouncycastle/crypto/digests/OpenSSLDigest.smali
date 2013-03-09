.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$1;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blockSize:I

.field private ctx:I

.field private final evp_md:I

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->algorithm:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->evp_md:I

    iput p3, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->size:I

    iput p4, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->blockSize:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private free()V
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    :cond_0
    return-void
.end method

.method private getCtx()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->evp_md:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(I)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->getCtx()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->reset()V

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->size:I

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->free()V

    return-void
.end method

.method public update(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->getCtx()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    return-void
.end method
