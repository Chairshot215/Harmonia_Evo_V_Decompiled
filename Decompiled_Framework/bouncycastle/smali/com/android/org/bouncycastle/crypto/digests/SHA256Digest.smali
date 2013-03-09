.class public Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA256Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_0
    .array-data 0x4
        0x98t 0x2ft 0x8at 0x42t
        0x91t 0x44t 0x37t 0x71t
        0xcft 0xfbt 0xc0t 0xb5t
        0xa5t 0xdbt 0xb5t 0xe9t
        0x5bt 0xc2t 0x56t 0x39t
        0xf1t 0x11t 0xf1t 0x59t
        0xa4t 0x82t 0x3ft 0x92t
        0xd5t 0x5et 0x1ct 0xabt
        0x98t 0xaat 0x7t 0xd8t
        0x1t 0x5bt 0x83t 0x12t
        0xbet 0x85t 0x31t 0x24t
        0xc3t 0x7dt 0xct 0x55t
        0x74t 0x5dt 0xbet 0x72t
        0xfet 0xb1t 0xdet 0x80t
        0xa7t 0x6t 0xdct 0x9bt
        0x74t 0xf1t 0x9bt 0xc1t
        0xc1t 0x69t 0x9bt 0xe4t
        0x86t 0x47t 0xbet 0xeft
        0xc6t 0x9dt 0xc1t 0xft
        0xcct 0xa1t 0xct 0x24t
        0x6ft 0x2ct 0xe9t 0x2dt
        0xaat 0x84t 0x74t 0x4at
        0xdct 0xa9t 0xb0t 0x5ct
        0xdat 0x88t 0xf9t 0x76t
        0x52t 0x51t 0x3et 0x98t
        0x6dt 0xc6t 0x31t 0xa8t
        0xc8t 0x27t 0x3t 0xb0t
        0xc7t 0x7ft 0x59t 0xbft
        0xf3t 0xbt 0xe0t 0xc6t
        0x47t 0x91t 0xa7t 0xd5t
        0x51t 0x63t 0xcat 0x6t
        0x67t 0x29t 0x29t 0x14t
        0x85t 0xat 0xb7t 0x27t
        0x38t 0x21t 0x1bt 0x2et
        0xfct 0x6dt 0x2ct 0x4dt
        0x13t 0xdt 0x38t 0x53t
        0x54t 0x73t 0xat 0x65t
        0xbbt 0xat 0x6at 0x76t
        0x2et 0xc9t 0xc2t 0x81t
        0x85t 0x2ct 0x72t 0x92t
        0xa1t 0xe8t 0xbft 0xa2t
        0x4bt 0x66t 0x1at 0xa8t
        0x70t 0x8bt 0x4bt 0xc2t
        0xa3t 0x51t 0x6ct 0xc7t
        0x19t 0xe8t 0x92t 0xd1t
        0x24t 0x6t 0x99t 0xd6t
        0x85t 0x35t 0xet 0xf4t
        0x70t 0xa0t 0x6at 0x10t
        0x16t 0xc1t 0xa4t 0x19t
        0x8t 0x6ct 0x37t 0x1et
        0x4ct 0x77t 0x48t 0x27t
        0xb5t 0xbct 0xb0t 0x34t
        0xb3t 0xct 0x1ct 0x39t
        0x4at 0xaat 0xd8t 0x4et
        0x4ft 0xcat 0x9ct 0x5bt
        0xf3t 0x6ft 0x2et 0x68t
        0xeet 0x82t 0x8ft 0x74t
        0x6ft 0x63t 0xa5t 0x78t
        0x14t 0x78t 0xc8t 0x84t
        0x8t 0x2t 0xc7t 0x8ct
        0xfat 0xfft 0xbet 0x90t
        0xebt 0x6ct 0x50t 0xa4t
        0xf7t 0xa3t 0xf9t 0xbet
        0xf2t 0x78t 0x71t 0xc6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    return-void
.end method

.method private Ch(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Maj(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum0(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum1(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta0(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta1(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 15

    const/4 v14, 0x0

    const/16 v9, 0x10

    :goto_0
    const/16 v10, 0x3f

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v12, v9, -0x2

    aget v11, v11, v12

    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0xf

    aget v12, v12, v13

    invoke-direct {p0, v12}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0x10

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_1
    const/16 v10, 0x8

    if-ge v8, v10, :cond_1

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    add-int/2addr v1, v5

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    add-int/2addr v0, v4

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    add-int/2addr v7, v3

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    add-int/2addr v6, v2

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    add-int/2addr v5, v1

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    add-int/2addr v4, v0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_1
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v10, v7

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v14, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v8, 0x0

    :goto_2
    const/16 v10, 0x10

    if-ge v8, v10, :cond_2

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v14, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

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

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    aput v0, v1, v2

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v1, 0x6a09e667

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const v1, -0x4498517b

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const v1, 0x3c6ef372

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const v1, -0x5ab00ac6

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const v1, 0x510e527f

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const v1, -0x64fa9774

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const v1, 0x1f83d9ab

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const v1, 0x5be0cd19

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
