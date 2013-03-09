.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DES;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DES"

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

    instance-of v1, p1, Ljavax/crypto/spec/DESKeySpec;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESKeySpec;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    goto :goto_0
.end method
