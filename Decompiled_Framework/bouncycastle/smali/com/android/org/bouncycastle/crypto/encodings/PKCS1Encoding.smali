.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs1.strict"


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    return-void
.end method

.method private decodeBlock([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    array-length v5, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_0

    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    aget-byte v4, v0, v7

    if-eq v4, v8, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_2

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_2

    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const/4 v3, 0x1

    :goto_0
    array-length v5, v0

    if-eq v3, v5, :cond_3

    aget-byte v1, v0, v3

    if-nez v1, :cond_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    array-length v5, v0

    if-gt v3, v5, :cond_4

    const/16 v5, 0xa

    if-ge v3, v5, :cond_7

    :cond_4
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    if-ne v4, v8, :cond_6

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    array-length v5, v2

    invoke-static {v0, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    aput-byte v2, v0, v4

    const/4 v1, 0x1

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    aput-byte v2, v0, v4

    const/4 v1, 0x1

    :goto_1
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    :goto_2
    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v0, v2

    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private useStrict()Z
    .locals 2

    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    return-void

    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
