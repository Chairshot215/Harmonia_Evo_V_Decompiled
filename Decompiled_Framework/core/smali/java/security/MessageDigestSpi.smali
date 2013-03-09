.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineDigest([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v1

    if-ge p3, v1, :cond_0

    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    new-instance v1, Ljava/security/DigestException;

    const-string v2, "The value of len parameter is less than the actual digest length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gez p2, :cond_1

    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    new-instance v1, Ljava/security/DigestException;

    const-string v2, "offset < 0"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    new-instance v1, Ljava/security/DigestException;

    const-string v2, "offset + len > buf.length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    array-length v1, v0

    if-ge p3, v1, :cond_3

    new-instance v1, Ljava/security/DigestException;

    const-string v2, "The value of len parameter is less than the actual digest length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v4, v1, v2

    sub-int v5, v0, v2

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
