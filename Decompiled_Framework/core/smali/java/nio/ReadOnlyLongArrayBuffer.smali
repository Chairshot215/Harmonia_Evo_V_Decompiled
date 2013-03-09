.class final Ljava/nio/ReadOnlyLongArrayBuffer;
.super Ljava/nio/LongArrayBuffer;
.source "ReadOnlyLongArrayBuffer.java"


# direct methods
.method constructor <init>(I[JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/LongArrayBuffer;-><init>(I[JI)V

    return-void
.end method

.method static copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadOnlyLongArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadOnlyLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/LongArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyLongArrayBuffer;-><init>(I[JI)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ReadOnlyLongArrayBuffer;->duplicate()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyLongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadOnlyLongArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[J
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

.method public put(IJ)Ljava/nio/LongBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([JII)Ljava/nio/LongBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadOnlyLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyLongArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/LongArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyLongArrayBuffer;-><init>(I[JI)V

    return-object v0
.end method
