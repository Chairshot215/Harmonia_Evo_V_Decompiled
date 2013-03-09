.class final Ljava/nio/ReadOnlyDoubleArrayBuffer;
.super Ljava/nio/DoubleArrayBuffer;
.source "ReadOnlyDoubleArrayBuffer.java"


# direct methods
.method constructor <init>(I[DI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DI)V

    return-void
.end method

.method static copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadOnlyDoubleArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDoubleArrayBuffer;-><init>(I[DI)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->duplicate()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadOnlyDoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[D
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([DII)Ljava/nio/DoubleBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadOnlyDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDoubleArrayBuffer;-><init>(I[DI)V

    return-object v0
.end method
