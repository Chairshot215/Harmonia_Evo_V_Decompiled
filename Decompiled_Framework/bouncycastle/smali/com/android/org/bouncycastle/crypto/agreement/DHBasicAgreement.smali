.class public Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

.field private key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_0
    instance-of v2, v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method
