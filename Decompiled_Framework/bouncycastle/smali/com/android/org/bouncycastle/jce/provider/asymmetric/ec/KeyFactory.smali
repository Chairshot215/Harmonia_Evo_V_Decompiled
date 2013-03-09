.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECMQV;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDHC;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDH;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECGOST3410;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDSA;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$EC;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;)V

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PKCS#8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :goto_0
    return-object v2

    :cond_0
    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X.509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    :cond_1
    const-class v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_0

    :cond_3
    const-class v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_5

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implemented yet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
