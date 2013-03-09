.class final Ljava/nio/ReadWriteDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadWriteDirectByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-static {p1}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(IJ)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v1, 0x0

    iget v3, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method final put([CII)V
    .locals 7

    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([DII)V
    .locals 7

    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([FII)V
    .locals 7

    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([III)V
    .locals 7

    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([JII)V
    .locals 7

    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([SII)V
    .locals 7

    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 6

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 5

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 4

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-object v0
.end method
