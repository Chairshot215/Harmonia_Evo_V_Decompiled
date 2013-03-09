.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2WithHmacSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PBKDF2WithHmacSHA1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_4

    move-object v7, p1

    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "missing required salt"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive iteration count required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive key length required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v7, v3, v4, v5}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
