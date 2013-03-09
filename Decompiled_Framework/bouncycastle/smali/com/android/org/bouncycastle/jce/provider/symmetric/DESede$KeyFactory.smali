.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$KeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DESede"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v1, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DESede"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    goto :goto_0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/16 v4, 0x10

    if-nez p2, :cond_0

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "keySpec parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "key parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v3

    :cond_2
    const-class v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    :try_start_0
    array-length v3, v0

    if-ne v3, v4, :cond_3

    const/16 v3, 0x18

    new-array v2, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Invalid KeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
