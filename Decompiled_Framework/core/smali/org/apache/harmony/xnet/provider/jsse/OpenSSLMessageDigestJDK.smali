.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigest;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA512;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA384;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$MD5;
    }
.end annotation


# instance fields
.field private ctx:I

.field private final evp_md:I

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->evp_md:I

    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private free()V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    :cond_0
    return-void
.end method

.method private getCtx()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->evp_md:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_copy(I)I

    move-result v1

    iput v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    return-object v0
.end method

.method protected engineDigest()[B
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v1, [B

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v1

    invoke-static {v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected engineReset()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->free()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
