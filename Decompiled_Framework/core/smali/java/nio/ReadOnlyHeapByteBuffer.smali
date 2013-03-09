.class final Ljava/nio/ReadOnlyHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadOnlyHeapByteBuffer.java"


# direct methods
.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadOnlyHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyHeapByteBuffer;-><init>([BII)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[B
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

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadOnlyHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadOnlyHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyHeapByteBuffer;-><init>([BII)V

    return-object v0
.end method
