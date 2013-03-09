.class public Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v4, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v5, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v3
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    return-void
.end method
