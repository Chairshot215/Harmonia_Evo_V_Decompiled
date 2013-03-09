.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$RSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v3, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    instance-of v3, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;

    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown KeySpec type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;

    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method
