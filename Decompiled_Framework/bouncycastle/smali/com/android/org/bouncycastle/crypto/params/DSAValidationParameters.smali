.class public Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    iget v2, v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getCounter()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
