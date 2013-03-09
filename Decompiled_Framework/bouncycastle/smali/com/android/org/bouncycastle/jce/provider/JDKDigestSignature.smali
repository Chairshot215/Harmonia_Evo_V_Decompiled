.class public Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;
.super Ljava/security/SignatureSpi;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$MD5WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA512WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA384WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA256WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private derEncode([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPrivateKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPublicKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

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

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "key too small for signature type"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

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

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_2

    const/4 v4, 0x0

    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_4

    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_1

    :cond_0
    :goto_1
    return v7

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_0

    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    const/4 v4, 0x0

    :goto_2
    array-length v9, v3

    if-ge v4, v9, :cond_3

    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_4

    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_1
.end method
