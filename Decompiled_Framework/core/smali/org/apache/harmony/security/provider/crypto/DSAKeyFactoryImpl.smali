.class public Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;
.super Ljava/security/KeyFactorySpi;
.source "DSAKeyFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "keySpec == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/DSAPrivateKey;

    const-class v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v8, v6, v1, v5, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v8

    :cond_1
    const-class v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    instance-of v8, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v8, :cond_6

    move-object v4, p1

    check-cast v4, Ljava/security/interfaces/DSAPublicKey;

    const-class v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v8, v7, v1, v5, v0}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_4
    const-class v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v4, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v4, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    instance-of v4, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v4, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    :try_start_1
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
