.class public Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;
.super Ljava/security/SignatureSpi;
.source "JDKDSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner$noneDSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    return-object v2
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
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

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

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

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

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

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

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
