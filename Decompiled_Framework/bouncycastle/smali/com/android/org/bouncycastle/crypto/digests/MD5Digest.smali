.class public Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x7

.field private static final S12:I = 0xc

.field private static final S13:I = 0x11

.field private static final S14:I = 0x16

.field private static final S21:I = 0x5

.field private static final S22:I = 0x9

.field private static final S23:I = 0xe

.field private static final S24:I = 0x14

.field private static final S31:I = 0x4

.field private static final S32:I = 0xb

.field private static final S33:I = 0x10

.field private static final S34:I = 0x17

.field private static final S41:I = 0x6

.field private static final S42:I = 0xa

.field private static final S43:I = 0xf

.field private static final S44:I = 0x15


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    return-void
.end method

.method private F(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private K(III)I
    .locals 1

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->finish()V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "MD5"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 13

    const/16 v12, 0x9

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, 0x4881d05

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x4e0811a1

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v5, v5

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 4

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v1, 0x67452301

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const v1, -0x10325477

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const v1, -0x67452302

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const v1, 0x10325476

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
