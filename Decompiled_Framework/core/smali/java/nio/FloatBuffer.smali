.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>([F)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public final array()[F
    .locals 1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArray()[F

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    iget v2, p1, Ljava/nio/Buffer;->position:I

    :goto_1
    if-lez v0, :cond_4

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    cmpl-float v5, v3, v1

    if-eqz v5, :cond_3

    cmpl-float v5, v3, v3

    if-eqz v5, :cond_0

    cmpl-float v5, v1, v1

    if-nez v5, :cond_3

    :cond_0
    cmpg-float v5, v3, v1

    if-gez v5, :cond_2

    const/4 v5, -0x1

    :goto_2
    return v5

    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x0

    instance-of v9, p1, Ljava/nio/FloatBuffer;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v5, p1

    check-cast v5, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v9

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v10

    if-ne v9, v10, :cond_0

    iget v3, p0, Ljava/nio/Buffer;->position:I

    iget v6, v5, Ljava/nio/Buffer;->position:I

    const/4 v2, 0x1

    move v7, v6

    move v4, v3

    :goto_1
    if-eqz v2, :cond_4

    iget v9, p0, Ljava/nio/Buffer;->limit:I

    if-ge v4, v9, :cond_4

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    cmpl-float v9, v0, v1

    if-eqz v9, :cond_2

    cmpl-float v9, v0, v0

    if-eqz v9, :cond_3

    cmpl-float v9, v1, v1

    if-eqz v9, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    move v7, v6

    move v4, v3

    goto :goto_1

    :cond_3
    move v2, v8

    goto :goto_2

    :cond_4
    move v8, v2

    goto :goto_0
.end method

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedHasArray()Z

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

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[F
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

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

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method
