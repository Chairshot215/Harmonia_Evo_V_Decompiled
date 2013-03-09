.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .locals 4

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, p3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    array-length v2, p3

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    ushr-int/lit8 v1, v1, 0x8

    array-length v2, p3

    add-int/lit8 v0, v2, -0x2

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 16

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v11, [B

    move/from16 v0, p2

    new-array v8, v0, [B

    const/4 v9, 0x0

    :goto_0
    array-length v11, v3

    if-eq v9, v11, :cond_0

    move/from16 v0, p1

    int-to-byte v11, v0

    aput-byte v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v11, v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v6, v11, [B

    const/4 v9, 0x0

    :goto_1
    array-length v11, v6

    if-eq v9, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    new-array v6, v11, [B

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v11, v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v5, v11, [B

    const/4 v9, 0x0

    :goto_2
    array-length v11, v5

    if-eq v9, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    new-array v5, v11, [B

    :cond_4
    array-length v11, v6

    array-length v12, v5

    add-int/2addr v11, v12

    new-array v4, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    array-length v12, v6

    array-length v13, v5

    invoke-static {v5, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v11, [B

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int v7, v11, v12

    const/4 v9, 0x1

    :goto_3
    if-gt v9, v7, :cond_9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v1, v11, [B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v3

    invoke-interface {v11, v3, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v11, v4, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-eq v10, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v1

    invoke-interface {v11, v1, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_5
    array-length v11, v2

    if-eq v10, v11, :cond_6

    array-length v11, v1

    rem-int v11, v10, v11

    aget-byte v11, v1, v11

    aput-byte v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_6
    array-length v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v11, v12

    if-eq v10, v11, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    if-ne v9, v7, :cond_8

    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v8

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v1

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    return-object v8
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 5

    const/4 v4, 0x0

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
