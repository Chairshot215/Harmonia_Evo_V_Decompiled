.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>([D)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final array()[D
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .locals 9

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    :goto_0
    iget v6, p0, Ljava/nio/Buffer;->position:I

    iget v3, p1, Ljava/nio/Buffer;->position:I

    :goto_1
    if-lez v0, :cond_4

    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    cmpl-double v7, v4, v1

    if-eqz v7, :cond_3

    cmpl-double v7, v4, v4

    if-eqz v7, :cond_0

    cmpl-double v7, v1, v1

    if-nez v7, :cond_3

    :cond_0
    cmpg-double v7, v4, v1

    if-gez v7, :cond_2

    const/4 v7, -0x1

    :goto_2
    return v7

    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v10, 0x0

    instance-of v11, p1, Ljava/nio/DoubleBuffer;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object v7, p1

    check-cast v7, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v11

    invoke-virtual {v7}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v12

    if-ne v11, v12, :cond_0

    iget v5, p0, Ljava/nio/Buffer;->position:I

    iget v8, v7, Ljava/nio/Buffer;->position:I

    const/4 v4, 0x1

    move v9, v8

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    iget v11, p0, Ljava/nio/Buffer;->limit:I

    if-ge v6, v11, :cond_4

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    cmpl-double v11, v0, v2

    if-eqz v11, :cond_2

    cmpl-double v11, v0, v0

    if-eqz v11, :cond_3

    cmpl-double v11, v2, v2

    if-eqz v11, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_2
    move v9, v8

    move v6, v5

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    move v10, v4

    goto :goto_0
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 3

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget v3, p0, Ljava/nio/Buffer;->position:I

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Ljava/nio/Buffer;->limit:I

    if-ge v3, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    long-to-int v5, v1

    add-int/2addr v5, v0

    const/16 v6, 0x20

    shr-long v6, v1, v6

    long-to-int v6, v6

    xor-int v0, v5, v6

    move v3, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[D
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [D

    invoke-virtual {p1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 3

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

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

    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method
