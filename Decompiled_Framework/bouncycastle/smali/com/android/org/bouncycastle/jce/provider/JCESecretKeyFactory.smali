.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "JCESecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And256BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And192BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And128BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd256BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd192BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd40BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndTwofish;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd40BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndDES2Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndDES3Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA1AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA1AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/SecretKey;

    return-object p1

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string v5, "keySpec parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string v5, "key parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
