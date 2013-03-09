.class final Ljava/nio/ReadOnlyCharArrayBuffer;
.super Ljava/nio/CharArrayBuffer;
.source "ReadOnlyCharArrayBuffer.java"


# direct methods
.method constructor <init>(I[CI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    return-void
.end method

.method static copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;
    .locals 4

    new-instance v0, Ljava/nio/ReadOnlyCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyCharArrayBuffer;-><init>(I[CI)V

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

    invoke-virtual {p0}, Ljava/nio/ReadOnlyCharArrayBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[C
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

.method public put(C)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([CII)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 5

    new-instance v0, Ljava/nio/ReadOnlyCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyCharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyCharArrayBuffer;-><init>(I[CI)V

    return-object v0
.end method
