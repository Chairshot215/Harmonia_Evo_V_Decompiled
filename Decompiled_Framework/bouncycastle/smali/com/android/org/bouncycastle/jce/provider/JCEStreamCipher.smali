.class public Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEStreamCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd40BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd128BitRC4;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-instance v0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

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

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    instance-of v5, p2, Ljavax/crypto/SecretKey;

    if-nez v5, :cond_0

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key for algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not suitable for symmetric enryption."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    instance-of v5, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v5, :cond_8

    move-object v2, p2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    :goto_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    :cond_1
    :goto_2
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    if-eqz v5, :cond_4

    instance-of v5, v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v5, :cond_4

    move-object v1, p4

    if-nez v1, :cond_2

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :cond_2
    if-eq p1, v8, :cond_3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    :cond_3
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-array v0, v5, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v3, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v5, v4

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v3, v4

    :cond_4
    packed-switch p1, :pswitch_data_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "eeek!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_0

    :cond_6
    instance-of v5, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3, v5}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    if-nez p3, :cond_9

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_2

    :cond_9
    instance-of v5, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_a

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v5, v3

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unknown parameter type."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "no IV set when one expected"

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v5, v8, v3}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    :pswitch_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception v6

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 6

    new-array v4, p3, [B

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    return-object v4
.end method
