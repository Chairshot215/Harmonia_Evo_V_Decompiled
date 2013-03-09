.class public Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;
.implements Lcom/android/org/bouncycastle/crypto/DSA;


# instance fields
.field key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p2

    mul-int/lit8 v0, v2, 0x8

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 12

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v4, v10}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v10, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x2

    new-array v7, v10, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    aput-object v6, v7, v10

    const/4 v10, 0x1

    aput-object v8, v7, v10

    return-object v7
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_0

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v0, v6, v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0
.end method
