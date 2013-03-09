.class final Ljava/nio/ReadWriteShortArrayBuffer;
.super Ljava/nio/ShortArrayBuffer;
.source "ReadWriteShortArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>(I)V

    return-void
.end method

.method constructor <init>(I[SI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    return-void
.end method

.method constructor <init>([S)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    return-void
.end method

.method static copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadOnlyShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .locals 5

    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

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

.method public duplicate()Ljava/nio/ShortBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[S
    .locals 1

    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    iget v0, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteShortArrayBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-short p2, v0, v1

    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput-short p1, v0, v1

    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    return-object v0
.end method
