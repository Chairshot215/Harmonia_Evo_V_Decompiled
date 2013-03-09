.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# static fields
.field static final defaultPublicExponent:Ljava/math/BigInteger; = null

.field static final defaultTests:I = 0xc


# instance fields
.field engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

.field param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "RSA"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x800

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->defaultPublicExponent:Ljava/math/BigInteger;

    const/16 v2, 0xc

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v1, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
