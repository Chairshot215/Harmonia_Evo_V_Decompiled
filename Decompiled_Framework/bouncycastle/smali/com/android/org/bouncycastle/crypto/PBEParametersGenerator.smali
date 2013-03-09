.class public abstract Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .locals 4

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    aget-char v3, p0, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [B

    :cond_1
    return-object v0
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .locals 3

    array-length v2, p0

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public getIterationCount()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public getPassword()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public init([B[BI)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iput p3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
