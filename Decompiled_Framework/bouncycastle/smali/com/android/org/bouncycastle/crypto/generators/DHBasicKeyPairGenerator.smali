.class public Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v5, v3, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v6, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    return-void
.end method
