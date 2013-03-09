.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;
.super Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.source "OpenSSLDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I

.field private static final EVP_MD:I

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sha256"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->EVP_MD:I

    sget v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->EVP_MD:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_size(I)I

    move-result v0

    sput v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->SIZE:I

    sget v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->EVP_MD:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_block_size(I)I

    move-result v0

    sput v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->BLOCK_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v1, "SHA-256"

    sget v2, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->EVP_MD:I

    sget v3, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->SIZE:I

    sget v4, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;->BLOCK_SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;-><init>(Ljava/lang/String;IIILcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$1;)V

    return-void
.end method
