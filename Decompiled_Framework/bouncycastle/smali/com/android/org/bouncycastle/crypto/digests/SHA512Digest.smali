.class public Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, -0x4498517a7b3558c5L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, 0x3c6ef372fe94f82bL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x510e527fade682d1L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, 0x1f83d9abfb41bd6bL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x5be0cd19137e2179L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method
