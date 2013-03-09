.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEKeyFactory"
.end annotation


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iput p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

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

    if-eqz v0, :cond_2

    move-object v7, p1

    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    :goto_1
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    invoke-static {v7, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
