.class final Ljava/nio/MappedByteBufferAdapter;
.super Ljava/nio/MappedByteBuffer;
.source "MappedByteBufferAdapter.java"


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v0, v0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v0, v0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return-void
.end method


# virtual methods
.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Ljava/nio/Buffer;->mark:I

    iput v1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Ljava/nio/Buffer;->mark:I

    iput v1, v0, Ljava/nio/Buffer;->mark:I

    return-object v0
.end method

.method public final free()V
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->free()V

    return-void
.end method

.method public get()B
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->get()B

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return-object v0
.end method

.method public getChar()C
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getChar()C

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public getChar(I)C
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 4

    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getDouble()D

    move-result-wide v0

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/Buffer;->position:I

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getFloat()F

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getInt()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 4

    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getLong()J

    move-result-wide v0

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/Buffer;->position:I

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getShort()S

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method limitImpl(I)V
    .locals 1

    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->limitImpl(I)V

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method orderImpl(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)V

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method positionImpl(I)V
    .locals 1

    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->positionImpl(I)V

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protectedArray()[B
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method
