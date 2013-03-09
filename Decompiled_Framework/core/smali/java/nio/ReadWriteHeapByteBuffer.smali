.class final Ljava/nio/ReadWriteHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadWriteHeapByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>(I)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>([B)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

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
    .locals 5

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    invoke-static {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[B
    .locals 1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x1

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
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method final put([CII)V
    .locals 7

    const/4 v5, 0x2

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([DII)V
    .locals 7

    const/16 v5, 0x8

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([FII)V
    .locals 7

    const/4 v5, 0x4

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([III)V
    .locals 7

    const/4 v5, 0x4

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([JII)V
    .locals 7

    const/16 v5, 0x8

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-void
.end method

.method final put([SII)V
    .locals 7

    const/4 v5, 0x2

    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

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
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
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
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

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
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, p2, v3}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

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
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    return-object v0
.end method
