.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

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

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    const/16 v0, 0x30

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, -0x344462a23efa6128L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, 0x629a292a367cd507L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x67332667ffc00b31L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x714bb57897a7eaefL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, -0x24f3d1f29b067059L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method
