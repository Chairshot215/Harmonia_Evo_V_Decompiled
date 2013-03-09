.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private final M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    new-array v5, v7, [I

    aput-object v5, v4, v6

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    new-array v5, v7, [I

    aput-object v5, v4, v6

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v1, 0x4

    :goto_0
    if-lt v1, v8, :cond_0

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aput-object v3, v4, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v9

    const/4 v1, 0x4

    :goto_1
    if-lt v1, v8, :cond_1

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x2

    :goto_2
    const/16 v4, 0x10

    if-ge v1, v4, :cond_4

    const/4 v2, 0x1

    :goto_3
    if-ge v2, v1, :cond_3

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    add-int v5, v1, v2

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr v1, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    return-void

    :cond_5
    if-le v0, v8, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    new-array v5, v7, [I

    aput-object v5, v4, v6

    const/16 v1, 0x8

    :goto_4
    if-lez v1, :cond_2

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public multiplyH([B)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v2, v9, [I

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    aget-object v1, v3, v4

    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-object v1, v3, v4

    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget v3, v2, v5

    invoke-static {v3, p1, v5}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v3, v2, v6

    invoke-static {v3, p1, v9}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v3, v2, v7

    const/16 v4, 0x8

    invoke-static {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v3, v2, v8

    const/16 v4, 0xc

    invoke-static {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method
