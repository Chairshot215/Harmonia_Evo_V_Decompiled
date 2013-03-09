.class final Ljava/nio/ReadWriteFloatArrayBuffer;
.super Ljava/nio/FloatArrayBuffer;
.source "ReadWriteFloatArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>(I)V

    return-void
.end method

.method constructor <init>(I[FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FloatArrayBuffer;-><init>(I[FI)V

    return-void
.end method

.method constructor <init>([F)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    return-void
.end method

.method static copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadOnlyFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

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

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[F
    .locals 1

    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    iget v0, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteFloatArrayBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    return-object v0
.end method
