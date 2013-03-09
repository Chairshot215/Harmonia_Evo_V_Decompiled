.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
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

.method public static allocate(I)Ljava/nio/LongBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>([J)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public final array()[J
    .locals 1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/LongBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .locals 9

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    :goto_0
    iget v6, p0, Ljava/nio/Buffer;->position:I

    iget v3, p1, Ljava/nio/Buffer;->position:I

    :goto_1
    if-lez v0, :cond_3

    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    cmp-long v7, v4, v1

    if-eqz v7, :cond_2

    cmp-long v7, v4, v1

    if-gez v7, :cond_1

    const/4 v7, -0x1

    :goto_2
    return v7

    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v6, 0x0

    instance-of v7, p1, Ljava/nio/LongBuffer;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/LongBuffer;

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

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

    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v7

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

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

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 3

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

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

    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

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

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [J

    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 3

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

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

    invoke-virtual {p0, v1, v2}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method
