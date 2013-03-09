.class abstract Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInts([B)[I
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    new-array v0, v3, [I

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method static multiply([B[B)V
    .locals 10

    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    new-array v1, v9, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_4

    aget-byte v0, p1, v2

    const/4 v3, 0x7

    :goto_1
    if-ltz v3, :cond_3

    shl-int v8, v6, v3

    and-int/2addr v8, v0

    if-eqz v8, :cond_0

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_0
    const/16 v8, 0xf

    aget-byte v8, v5, v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v4, v6

    :goto_2
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    if-eqz v4, :cond_1

    aget-byte v8, v5, v7

    xor-int/lit8 v8, v8, -0x1f

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v1, v7, p0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static multiplyP([I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x3

    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    if-eqz v0, :cond_0

    aget v2, p0, v1

    const/high16 v3, -0x1f00

    xor-int/2addr v2, v3

    aput v2, p0, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static multiplyP8([I)V
    .locals 1

    const/16 v0, 0x8

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static oneAsBytes()[B
    .locals 3

    const/16 v1, 0x10

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static oneAsInts()[I
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    return-object v0
.end method

.method static shiftRight([B)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    goto :goto_0
.end method

.method static shiftRight([I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    aget v0, p0, v2

    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v1, v0, 0x1f

    goto :goto_0
.end method

.method static xor([B[B)V
    .locals 3

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static xor([I[I)V
    .locals 3

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
