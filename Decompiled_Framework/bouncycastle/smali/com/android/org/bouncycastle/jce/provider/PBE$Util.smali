.class public Lcom/android/org/bouncycastle/jce/provider/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .locals 3

    if-nez p0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    packed-switch p1, :pswitch_data_1

    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method static makePBEMacParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 7

    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    new-array v2, v5, [B

    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x0

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method static makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 8

    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    new-array v3, v6, [B

    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    :goto_0
    const-string v6, "DES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_6

    const/4 v6, 0x0

    aput-byte v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v2, v4

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    :cond_6
    return-object v4
.end method

.method static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, v2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-object v3
.end method
