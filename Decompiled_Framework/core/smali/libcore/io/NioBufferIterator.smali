.class public final Llibcore/io/NioBufferIterator;
.super Llibcore/io/BufferIterator;
.source "NioBufferIterator.java"


# instance fields
.field private final address:I

.field private position:I

.field private final size:I

.field private final swap:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    iput p1, p0, Llibcore/io/NioBufferIterator;->address:I

    iput p2, p0, Llibcore/io/NioBufferIterator;->size:I

    iput-boolean p3, p0, Llibcore/io/NioBufferIterator;->swap:Z

    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 3

    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    invoke-static {v1}, Llibcore/io/Memory;->peekByte(I)B

    move-result v0

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    return v0
.end method

.method public readByteArray([BII)V
    .locals 2

    iget v0, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, v1

    invoke-static {v0, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(I[BII)V

    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    return-void
.end method

.method public readInt()I
    .locals 3

    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v1, v2}, Llibcore/io/Memory;->peekInt(IZ)I

    move-result v0

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    return v0
.end method

.method public readIntArray([III)V
    .locals 2

    iget v0, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v0, p1, p2, p3, v1}, Llibcore/io/Memory;->peekIntArray(I[IIIZ)V

    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    return-void
.end method

.method public readShort()S
    .locals 3

    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v1, v2}, Llibcore/io/Memory;->peekShort(IZ)S

    move-result v0

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    return v0
.end method

.method public seek(I)V
    .locals 0

    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    return-void
.end method
