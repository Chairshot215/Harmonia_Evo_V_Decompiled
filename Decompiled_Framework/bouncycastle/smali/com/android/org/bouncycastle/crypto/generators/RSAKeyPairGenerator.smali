.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v17

    add-int/lit8 v2, v17, 0x1

    div-int/lit8 v13, v2, 0x2

    sub-int v16, v17, v13

    div-int/lit8 v11, v17, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v13, v2, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    :goto_0
    new-instance v7, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v2, v1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v2, v11, :cond_1

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v18

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v14, v6

    move-object v6, v7

    move-object v7, v14

    :cond_2
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    new-instance v18, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v2 .. v10}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v18

    :cond_3
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    return-void
.end method
