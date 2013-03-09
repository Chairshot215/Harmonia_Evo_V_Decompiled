.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/Readable;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 4

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cs.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    iput p2, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>([C)V

    iput p1, v0, Ljava/nio/Buffer;->position:I

    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final array()[C
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArray()[C

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    iget v2, p1, Ljava/nio/Buffer;->position:I

    :goto_1
    if-lez v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    if-eq v3, v1, :cond_2

    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    :goto_2
    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    instance-of v7, p1, Ljava/nio/CharBuffer;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

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

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->get(I)C

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

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedHasArray()Z

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

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[C
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 4

    if-ltz p2, :cond_0

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sub-int v1, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_2
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

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

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-ne p1, p0, :cond_2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_2
    if-nez v1, :cond_3

    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_4

    new-array v0, v1, [C

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Ljava/nio/Buffer;->position:I

    :goto_0
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
