.class public Ljava/lang/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "UnsafeByteSequence.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    return-void
.end method


# virtual methods
.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/UnsafeByteSequence;->count:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/lang/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    :cond_0
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/UnsafeByteSequence;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return-void
.end method

.method public write([BII)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    :cond_0
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    return-void
.end method
