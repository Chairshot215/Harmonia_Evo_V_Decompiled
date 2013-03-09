.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(ILjava/nio/MemoryBlock;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    iget v2, p1, Ljava/nio/Buffer;->position:I

    :goto_1
    if-lez v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eq v3, v1, :cond_2

    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    :goto_2
    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v4, v3, Ljava/nio/Buffer;->position:I

    const/4 v0, 0x1

    move v5, v4

    move v2, v1

    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_3

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v5, v4

    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v6, v0

    goto :goto_0
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v1, p0, Ljava/nio/Buffer;->position:I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)V

    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method orderImpl(Ljava/nio/ByteOrder;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_0
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-void
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    if-ne p1, p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == this"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v7, v4, :cond_1

    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    move-object v6, p0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v6

    :goto_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    int-to-long v4, v7

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    :cond_4
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
