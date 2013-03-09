.class abstract Ljava/nio/IntArrayBuffer;
.super Ljava/nio/IntBuffer;
.source "IntArrayBuffer.java"


# instance fields
.field protected final backingArray:[I

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    return-void
.end method

.method constructor <init>(I[II)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/IntBuffer;-><init>(I)V

    iput-object p2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iput p3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    return-void
.end method

.method constructor <init>([I)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 4

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public final get(I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/IntArrayBuffer;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final get([III)Ljava/nio/IntBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public final isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
