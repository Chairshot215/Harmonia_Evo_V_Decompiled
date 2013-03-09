.class public Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    return-void
.end method

.method private f(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    const/16 v5, 0x10

    :goto_0
    const/16 v10, 0x50

    if-ge v5, v10, :cond_0

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v5, -0x3

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x8

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0xe

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x10

    aget v11, v11, v12

    xor-int v9, v10, v11

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, v6

    :goto_1
    const/4 v10, 0x4

    if-ge v8, v10, :cond_1

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x4

    if-ge v8, v10, :cond_2

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v10, 0x4

    if-ge v8, v10, :cond_3

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto/16 :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x3

    if-gt v8, v10, :cond_4

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto/16 :goto_4

    :cond_4
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x10

    if-ge v5, v10, :cond_5

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 3

    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aput v0, v1, v2

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v1, 0x67452301

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const v1, -0x10325477

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const v1, -0x67452302

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const v1, 0x10325476

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const v1, -0x3c2d1e10

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
