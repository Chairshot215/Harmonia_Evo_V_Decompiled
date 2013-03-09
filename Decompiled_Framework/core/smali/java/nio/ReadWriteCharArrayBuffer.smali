.class final Ljava/nio/ReadWriteCharArrayBuffer;
.super Ljava/nio/CharArrayBuffer;
.source "ReadWriteCharArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>(I)V

    return-void
.end method

.method constructor <init>(I[CI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    return-void
.end method

.method constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    return-void
.end method

.method static copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iput p1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 5

    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

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

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[C
    .locals 1

    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    iget v0, p0, Ljava/nio/CharArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput-char p1, v0, v1

    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteCharArrayBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-char p2, v0, v1

    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    return-object v0
.end method
