.class public Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    new-instance v4, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v5, v0, v6}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v1, v7}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method
