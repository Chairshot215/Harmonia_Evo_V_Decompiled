.class public final Llibcore/io/HeapBufferIterator;
.super Llibcore/io/BufferIterator;
.source "HeapBufferIterator.java"


# instance fields
.field private final buffer:[B

.field private final byteCount:I

.field private final offset:I

.field private final order:Ljava/nio/ByteOrder;

.field private position:I


# direct methods
.method constructor <init>([BIILjava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    iput-object p1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iput p2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iput p3, p0, Llibcore/io/HeapBufferIterator;->byteCount:I

    iput-object p4, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;
    .locals 1

    new-instance v0, Llibcore/io/HeapBufferIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Llibcore/io/HeapBufferIterator;-><init>([BIILjava/nio/ByteOrder;)V

    return-object v0
.end method


# virtual methods
.method public readByte()B
    .locals 4

    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v2, v3

    aget-byte v0, v1, v2

    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    return v0
.end method

.method public readByteArray([BII)V
    .locals 3

    iget-object v0, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iget v1, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iget v2, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    return-void
.end method

.method public readInt()I
    .locals 4

    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    return v0
.end method

.method public readIntArray([III)V
    .locals 7

    mul-int/lit8 v2, p3, 0x4

    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iget v0, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int v4, v0, v1

    const/4 v5, 0x4

    iget-object v0, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    return-void
.end method

.method public readShort()S
    .locals 4

    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    return v0
.end method

.method public seek(I)V
    .locals 0

    iput p1, p0, Llibcore/io/HeapBufferIterator;->position:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    return-void
.end method
