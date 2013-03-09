.class public abstract Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "WrapCipherSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeIvSize:I

.field protected pbeKeySize:I

.field protected pbeType:I

.field protected wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    new-array v0, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    new-array v0, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v4, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v4, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    instance-of v4, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    :goto_0
    instance-of v4, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v4, :cond_0

    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v2, v3

    :cond_0
    instance-of v4, v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-direct {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v2, v3

    :cond_1
    packed-switch p1, :pswitch_data_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "eeek!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "PBE requires PBE parameters to be set."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :pswitch_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "engine only valid for wrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    array-length v10, p1

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :goto_0
    const/4 v9, 0x3

    if-ne p3, v9, :cond_1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_1
    return-object v7

    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_1
    move-exception v1

    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_2
    move-exception v2

    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    if-ne p3, v9, :cond_6

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :try_start_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_1

    :cond_3
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto/16 :goto_1

    :cond_5
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Invalid key encoding."

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    :try_start_3
    const-string v9, "BC"

    invoke-static {p2, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    const/4 v9, 0x1

    if-ne p3, v9, :cond_7

    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x2

    if-ne p3, v9, :cond_8

    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v7

    goto/16 :goto_1

    :catch_4
    move-exception v1

    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_5
    move-exception v2

    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
