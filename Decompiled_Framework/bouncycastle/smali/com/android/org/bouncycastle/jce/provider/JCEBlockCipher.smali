.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndTwofish;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd128BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES3Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v8

    add-int v0, v8, p5

    array-length v1, p4

    if-le v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    add-int v1, p5, v7

    invoke-interface {v0, p4, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v0, v7

    return v0

    :catch_0
    move-exception v6

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v6

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v4, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v7, v0

    array-length v0, v4

    if-ne v7, v0, :cond_1

    :goto_0
    return-object v4

    :catch_0
    move-exception v6

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v6

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v8, v7, [B

    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

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
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    const/16 v3, 0x2f

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_1
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
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
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

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
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

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

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    instance-of v7, p2, Ljavax/crypto/SecretKey;

    if-nez v7, :cond_0

    new-instance v7, Ljava/security/InvalidKeyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key for algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not suitable for symmetric enryption."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    instance-of v7, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v7, :cond_7

    move-object v3, p2

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    :goto_1
    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v7, :cond_f

    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v7, :cond_f

    move-object v2, p4

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_2
    if-eq p1, v10, :cond_3

    const/4 v7, 0x3

    if-ne p1, v7, :cond_d

    :cond_3
    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v1, v7, [B

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v6, v5, v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v6

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    :goto_3
    if-eqz p4, :cond_e

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v7, :cond_e

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v5, v6, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_4
    packed-switch p1, :pswitch_data_0

    :try_start_0
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown opmode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " passed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    instance-of v7, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_6

    move-object v7, p3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p3, v7}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "PBE requires PBE parameters to be set."

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    if-nez p3, :cond_8

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_2

    :cond_8
    instance-of v7, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v7, :cond_a

    move-object v4, p3

    check-cast v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    array-length v7, v7

    iget v8, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IV must be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes long."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v5

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_2

    :cond_a
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v8, "ECB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "ECB mode does not use an IV"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_2

    :cond_c
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "unknown parameter type."

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_d
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PGPCFB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_f

    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "no IV set when one expected"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    :try_start_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_5
    return-void

    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_e
    move-object v5, v6

    goto/16 :goto_4

    :cond_f
    move-object v6, v5

    goto/16 :goto_3

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "ECB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "SIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GOFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_5
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    :cond_6
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_8
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_a
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_c
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v13

    if-lez v13, :cond_2

    new-array v5, v13, [B

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v12

    if-nez v12, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    array-length v1, v5

    if-eq v12, v1, :cond_1

    new-array v14, v12, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move-object v14, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    const/4 v14, 0x0

    goto :goto_0
.end method
