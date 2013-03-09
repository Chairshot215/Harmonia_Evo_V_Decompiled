.class public Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCERSACipher$NoPadding;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private privateKeyOnly:Z

.field private publicKeyOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ZZLcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v2

    invoke-direct {v3, v4, v0, v2}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v4, v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_2

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    if-le v4, v5, :cond_2

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-eq v2, v4, :cond_3

    add-int v4, p5, v2

    aget-byte v5, v3, v2

    aput-byte v5, p4, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    array-length v4, v3

    return v4
.end method

.method protected engineDoFinal([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v2, v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 3

    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not an RSA key!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetOutputSize(I)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "OAEP"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eeeek! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    instance-of v6, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v6, :cond_a

    :cond_0
    instance-of v6, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "mode 1 requires RSAPrivateKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-eqz p3, :cond_9

    move-object v5, p3

    check-cast v5, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MGF1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "unknown mask generation function specified"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    instance-of v6, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "mode 2 requires RSAPublicKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "unknown key type passed to RSA"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    instance-of v6, v6, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v6, :cond_6

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "unkown MGF parameters"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no match on digest algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no match on MGF digest algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    new-instance v7, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v8, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v6

    check-cast v6, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v6}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v6

    invoke-direct {v7, v8, v0, v1, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    :cond_9
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v6, v6, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez v6, :cond_c

    if-eqz p4, :cond_b

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v3, v4, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance v6, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown opmode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " passed to RSA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unknown parameter type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v3, v4, v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    goto :goto_1

    :pswitch_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_2
    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    :cond_c
    move-object v3, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_0

    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    :goto_0
    return-void

    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_0

    :cond_1
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_0

    :cond_2
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "MD5"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "MD5"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_3
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_4
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_6
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-224"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "SHA-224"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-384"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with RSA."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
