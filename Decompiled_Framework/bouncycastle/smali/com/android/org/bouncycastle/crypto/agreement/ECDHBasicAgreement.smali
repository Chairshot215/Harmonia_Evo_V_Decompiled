.class public Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-void
.end method
