.class abstract Ljava/nio/DirectByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "DirectByteBuffer.java"


# instance fields
.field protected final offset:I


# direct methods
.method protected constructor <init>(Ljava/nio/MemoryBlock;II)V
    .locals 4

    invoke-direct {p0, p2, p1}, Ljava/nio/BaseByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    add-int v2, p2, p3

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacity + offset > baseSize"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v2

    add-int/2addr v2, p3

    iput v2, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return-void
.end method


# virtual methods
.method public final free()V
    .locals 1

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->free()V

    return-void
.end method

.method public final get()B
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->peekByteArray(I[BII)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method final get([CII)V
    .locals 7

    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekCharArray(I[CIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final get([DII)V
    .locals 7

    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekDoubleArray(I[DIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final get([FII)V
    .locals 7

    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekFloatArray(I[FIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final get([III)V
    .locals 7

    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekIntArray(I[IIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final get([JII)V
    .locals 7

    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekLongArray(I[JIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final get([SII)V
    .locals 7

    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

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

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekShortArray(I[SIIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method public final getChar()C
    .locals 5

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return v1
.end method

.method public final getChar(I)C
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 6

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v3, 0x8

    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v3, :cond_0

    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-wide v1
.end method

.method public final getDouble(I)D
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 5

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x4

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return v1
.end method

.method public final getFloat(I)F
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 5

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x4

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return v1
.end method

.method public final getInt(I)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 6

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v3, 0x8

    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v3, :cond_0

    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-wide v1
.end method

.method public final getLong(I)J
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return v1
.end method

.method public final getShort(I)S
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[B
    .locals 2

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->array()[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
