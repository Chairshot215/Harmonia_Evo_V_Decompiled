.class public Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->keySize:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 4

    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    move-object p2, v1

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v3, p2, p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
