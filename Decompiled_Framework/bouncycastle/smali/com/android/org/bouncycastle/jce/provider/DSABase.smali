.class public abstract Lcom/android/org/bouncycastle/jce/provider/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field protected encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

.field protected signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/DSABase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
