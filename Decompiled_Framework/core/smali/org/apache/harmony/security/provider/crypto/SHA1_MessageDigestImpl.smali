.class public Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;
.super Ljava/security/MessageDigestSpi;
.source "SHA1_MessageDigestImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# instance fields
.field private buffer:[I

.field private messageLength:J

.field private oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    return-void
.end method

.method private processDigest([BI)V
    .locals 13

    const/16 v12, 0x51

    const/16 v11, 0xe

    const/4 v10, 0x0

    const/16 v9, 0xf

    iget-wide v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    const/4 v8, 0x3

    shl-long v4, v6, v8

    const/16 v6, -0x80

    invoke-virtual {p0, v6}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineUpdate(B)V

    const/4 v0, 0x0

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v12

    add-int/lit8 v6, v6, 0x3

    shr-int/lit8 v3, v6, 0x2

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v12

    if-eqz v6, :cond_0

    if-ge v3, v9, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6, v0, v11, v10}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v7, 0x20

    ushr-long v7, v4, v7

    long-to-int v7, v7

    aput v7, v6, v11

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const-wide/16 v7, -0x1

    and-long/2addr v7, v4

    long-to-int v7, v7

    aput v7, v6, v9

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    move v1, p2

    const/16 v0, 0x52

    :goto_1
    const/16 v6, 0x57

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v2, v6, v0

    ushr-int/lit8 v6, v2, 0x18

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    add-int/lit8 v6, v1, 0x2

    ushr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    add-int/lit8 v6, v1, 0x3

    int-to-byte v7, v2

    aput-byte v7, p1, v6

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne v3, v9, :cond_2

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aput v10, v6, v9

    :cond_2
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    return-object v0
.end method

.method protected engineDigest([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    const/16 v2, 0x14

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buf == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-gt p2, v0, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    if-ge p3, v2, :cond_3

    new-instance v0, Ljava/security/DigestException;

    const-string v1, "len < DIGEST_LENGTH"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gez p2, :cond_4

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    return v2
.end method

.method protected engineDigest()[B
    .locals 2

    const/16 v1, 0x14

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected engineReset()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x51

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-static {v0, v1, v2, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    :goto_0
    return-void

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    array-length v0, p1

    if-gt p3, v0, :cond_3

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    goto :goto_0
.end method
