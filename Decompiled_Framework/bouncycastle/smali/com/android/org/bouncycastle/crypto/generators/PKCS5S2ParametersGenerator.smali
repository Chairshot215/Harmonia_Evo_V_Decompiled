.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-void
.end method

.method private F([B[BI[B[BI)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p4

    invoke-interface {v4, p4, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    array-length v4, v3

    invoke-static {v3, v7, p5, p6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p3, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iteration count must be at least 1."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, v3

    invoke-interface {v4, v3, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_2

    add-int v4, p6, v1

    aget-byte v5, p5, v4

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 10

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    add-int v0, p1, v7

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v7

    const/4 v0, 0x4

    new-array v4, v0, [B

    mul-int v0, v9, v7

    new-array v5, v0, [B

    const/4 v8, 0x1

    :goto_0
    if-gt v8, v9, :cond_0

    invoke-direct {p0, v4, v8}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    add-int/lit8 v0, v8, -0x1

    mul-int v6, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private intToOctet([BI)V
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
