.class final Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
    }
.end annotation


# static fields
.field static final chunkalloc:I = 0x400

.field static final lowbits:I = 0xa

.field static final lowmask:I = 0x3ff


# instance fields
.field chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

.field final fastArray:[I

.field lastUsed:I

.field final slotsize:I


# direct methods
.method constructor <init>(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsize:I

    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;-><init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    iput v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge v1, p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v1, p1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*****WARNING: ChunkedIntArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rsub-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " words per slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    return-void
.end method


# virtual methods
.method appendSlot(IIII)I
    .locals 7

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v2, v5, 0x4

    shr-int/lit8 v1, v2, 0xa

    and-int/lit16 v3, v2, 0x3ff

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v1, v5, :cond_0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v6, 0x400

    new-array v6, v6, [I

    invoke-virtual {v5, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    aput p1, v0, v3

    add-int/lit8 v5, v3, 0x1

    aput p2, v0, v5

    add-int/lit8 v5, v3, 0x2

    aput p3, v0, v5

    add-int/lit8 v5, v3, 0x3

    aput p4, v0, v5

    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return v5
.end method

.method discardLast()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return-void
.end method

.method readEntry(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v3, 0x4

    if-lt p2, v3, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 v2, p1, 0x3ff

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    add-int v3, v2, p2

    aget v3, v0, v3

    return v3
.end method

.method readSlot(I[I)V
    .locals 5

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 v2, p1, 0x3ff

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v4, 0x400

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method slotsUsed()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return v0
.end method

.method specialFind(II)I
    .locals 5

    move v0, p1

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v0, 0xa

    and-int/lit16 v3, v0, 0x3ff

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    aget v0, v1, v4

    if-ne v0, p2, :cond_0

    :cond_1
    if-gtz v0, :cond_2

    :goto_0
    return p2

    :cond_2
    const/4 p2, -0x1

    goto :goto_0
.end method

.method writeEntry(III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v3, 0x4

    if-lt p2, v3, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 v2, p1, 0x3ff

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    add-int v3, v2, p2

    aput p3, v0, v3

    return-void
.end method

.method writeSlot(IIIII)V
    .locals 5

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 v2, p1, 0x3ff

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v4, 0x400

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    aput p2, v0, v2

    add-int/lit8 v3, v2, 0x1

    aput p3, v0, v3

    add-int/lit8 v3, v2, 0x2

    aput p4, v0, v3

    add-int/lit8 v3, v2, 0x3

    aput p5, v0, v3

    return-void
.end method
