.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ALL_ONES:J = -0x1L

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private bits:[J

.field private transient longCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Ljava/util/BitSet;-><init>([J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->arrayForBits(I)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    return-void
.end method

.method private constructor <init>([J)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method

.method private static arrayForBits(I)[J
    .locals 1

    add-int/lit8 v0, p0, 0x3f

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    return-object v0
.end method

.method private checkIndex(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkRange(II)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    if-gt p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [J

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method

.method private shrinkSize()V
    .locals 5

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .locals 10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/util/BitSet;->arrayForBits(I)[J

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-wide v4, v3, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    mul-int/lit8 v8, v2, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v4

    return-object v4
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .locals 2

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .locals 7

    iget v2, p0, Ljava/util/BitSet;->longCount:I

    iget v3, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .locals 9

    iget v2, p0, Ljava/util/BitSet;->longCount:I

    iget v3, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method

.method public cardinality()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    iput v4, p0, Ljava/util/BitSet;->longCount:I

    return-void
.end method

.method public clear(I)V
    .locals 8

    if-gez p1, :cond_0

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    :cond_0
    div-int/lit8 v0, p1, 0x40

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_0
.end method

.method public clear(II)V
    .locals 18

    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/BitSet;->longCount:I

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/BitSet;->longCount:I

    mul-int/lit8 v7, v11, 0x40

    move/from16 v0, p1

    if-ge v0, v7, :cond_0

    move/from16 v0, p2

    if-le v0, v7, :cond_2

    move/from16 p2, v7

    :cond_2
    div-int/lit8 v2, p1, 0x40

    add-int/lit8 v11, p2, -0x1

    div-int/lit8 v8, v11, 0x40

    const-wide/16 v11, -0x1

    shl-long v9, v11, p1

    const-wide/16 v11, -0x1

    move/from16 v0, p2

    neg-int v13, v0

    ushr-long v3, v11, v13

    if-ne v2, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    aget-wide v12, v11, v2

    and-long v14, v9, v3

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    and-long/2addr v12, v14

    aput-wide v12, v11, v2

    :goto_1
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_0

    :cond_3
    move v5, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, v11, v5

    const-wide/16 v14, -0x1

    xor-long/2addr v14, v9

    and-long/2addr v12, v14

    aput-wide v12, v11, v5

    :goto_2
    if-ge v6, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v5, v6, 0x1

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    move v6, v5

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v5, v6, 0x1

    aget-wide v12, v11, v6

    const-wide/16 v14, -0x1

    xor-long/2addr v14, v3

    and-long/2addr v12, v14

    aput-wide v12, v11, v6

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v0, Ljava/util/BitSet;->bits:[J

    invoke-direct {v0}, Ljava/util/BitSet;->shrinkSize()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v4, p1, Ljava/util/BitSet;

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/BitSet;

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    iget v5, v1, Ljava/util/BitSet;->longCount:I

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    iget-object v6, v1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public flip(I)V
    .locals 6

    if-gez p1, :cond_0

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    :cond_0
    div-int/lit8 v0, p1, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method

.method public flip(II)V
    .locals 13

    const-wide/16 v11, -0x1

    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v0, p1, 0x40

    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v5, v8, 0x40

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-lt v5, v8, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Ljava/util/BitSet;->ensureCapacity(I)V

    :cond_1
    shl-long v6, v11, p1

    neg-int v8, p2

    ushr-long v1, v11, v8

    if-ne v0, v5, :cond_2

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v0

    and-long v11, v6, v1

    xor-long/2addr v9, v11

    aput-wide v9, v8, v0

    :goto_1
    iget v8, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Ljava/util/BitSet;->longCount:I

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_0

    :cond_2
    move v3, v0

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v9, v8, v3

    xor-long/2addr v9, v6

    aput-wide v9, v8, v3

    :goto_2
    if-ge v4, v5, :cond_3

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    aget-wide v9, v8, v4

    xor-long/2addr v9, v11

    aput-wide v9, v8, v4

    move v4, v3

    goto :goto_2

    :cond_3
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    aget-wide v9, v8, v4

    xor-long/2addr v9, v1

    aput-wide v9, v8, v4

    goto :goto_1
.end method

.method public get(II)Ljava/util/BitSet;
    .locals 20

    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/BitSet;->longCount:I

    mul-int/lit8 v7, v15, 0x40

    move/from16 v0, p1

    if-ge v0, v7, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>(I)V

    :goto_0
    return-object v15

    :cond_1
    move/from16 v0, p2

    if-le v0, v7, :cond_2

    move/from16 p2, v7

    :cond_2
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v15, p2, -0x1

    div-int/lit8 v8, v15, 0x40

    const-wide/16 v15, -0x1

    shl-long v9, v15, p1

    const-wide/16 v15, -0x1

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v17, v0

    ushr-long v4, v15, v17

    if-ne v3, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/BitSet;->bits:[J

    aget-wide v15, v15, v3

    and-long v17, v9, v4

    and-long v15, v15, v17

    ushr-long v13, v15, p1

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_3

    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-wide v13, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>([J)V

    goto :goto_0

    :cond_4
    sub-int v15, v8, v3

    add-int/lit8 v15, v15, 0x1

    new-array v11, v15, [J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v3

    and-long v16, v16, v9

    aput-wide v16, v11, v15

    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v8

    and-long v16, v16, v4

    aput-wide v16, v11, v15

    const/4 v6, 0x1

    :goto_1
    sub-int v15, v8, v3

    if-ge v6, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/BitSet;->bits:[J

    add-int v16, v3, v6

    aget-wide v15, v15, v16

    aput-wide v15, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    rem-int/lit8 v12, p1, 0x40

    array-length v2, v11

    if-eqz v12, :cond_8

    const/4 v6, 0x0

    :goto_2
    array-length v15, v11

    if-ge v6, v15, :cond_8

    aget-wide v15, v11, v6

    ushr-long/2addr v15, v12

    aput-wide v15, v11, v6

    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    if-eq v6, v15, :cond_6

    aget-wide v15, v11, v6

    add-int/lit8 v17, v6, 0x1

    aget-wide v17, v11, v17

    neg-int v0, v12

    move/from16 v19, v0

    shl-long v17, v17, v19

    or-long v15, v15, v17

    aput-wide v15, v11, v6

    :cond_6
    aget-wide v15, v11, v6

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    add-int/lit8 v2, v6, 0x1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15, v11}, Ljava/util/BitSet;-><init>([J)V

    goto/16 :goto_0
.end method

.method public get(I)Z
    .locals 6

    const/4 v1, 0x0

    if-gez p1, :cond_0

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    :cond_0
    div-int/lit8 v0, p1, 0x40

    iget v2, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const-wide/16 v1, 0x4d2

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    add-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    xor-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    shr-long v3, v1, v3

    xor-long/2addr v3, v1

    long-to-int v3, v3

    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 7

    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    aget-wide v5, v0, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/BitSet;->longCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 3

    iget v0, p0, Ljava/util/BitSet;->longCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget v2, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public nextClearBit(I)I
    .locals 9

    const-wide/16 v7, -0x1

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    div-int/lit8 v0, p1, 0x40

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v3, :cond_0

    :goto_0
    return p1

    :cond_0
    shl-long v1, v7, p1

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    xor-long/2addr v3, v7

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    xor-long/2addr v4, v7

    and-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int p1, v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    :cond_2
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result p1

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int p1, v3, v4

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    div-int/lit8 v0, p1, 0x40

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-wide/16 v4, -0x1

    shl-long v1, v4, p1

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    :cond_3
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-eq v0, v4, :cond_0

    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public or(Ljava/util/BitSet;)V
    .locals 8

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    if-le v3, v2, :cond_1

    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    sub-int v5, v1, v2

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    return-void
.end method

.method public previousClearBit(I)I
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    move v0, p1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public previousSetBit(I)I
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    move v0, p1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public set(I)V
    .locals 6

    if-gez p1, :cond_0

    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    :cond_0
    div-int/lit8 v0, p1, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    return-void
.end method

.method public set(II)V
    .locals 13

    const-wide/16 v11, -0x1

    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v0, p1, 0x40

    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v5, v8, 0x40

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-lt v5, v8, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Ljava/util/BitSet;->ensureCapacity(I)V

    :cond_1
    shl-long v6, v11, p1

    neg-int v8, p2

    ushr-long v1, v11, v8

    if-ne v0, v5, :cond_2

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v0

    and-long v11, v6, v1

    or-long/2addr v9, v11

    aput-wide v9, v8, v0

    :goto_1
    iget v8, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Ljava/util/BitSet;->longCount:I

    goto :goto_0

    :cond_2
    move v3, v0

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v9, v8, v3

    or-long/2addr v9, v6

    aput-wide v9, v8, v3

    :goto_2
    if-ge v4, v5, :cond_3

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    aget-wide v9, v8, v4

    or-long/2addr v9, v11

    aput-wide v9, v8, v4

    move v4, v3

    goto :goto_2

    :cond_3
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    aget-wide v9, v8, v4

    or-long/2addr v9, v1

    aput-wide v9, v8, v4

    goto :goto_1
.end method

.method public set(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public toByteArray()[B
    .locals 7

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    add-int/lit8 v5, v1, 0x7

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    mul-int/lit8 v3, v2, 0x8

    div-int/lit8 v0, v3, 0x40

    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    ushr-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public toLongArray()[J
    .locals 2

    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    if-eqz v0, :cond_1

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .locals 8

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    if-le v3, v2, :cond_1

    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    sub-int v5, v1, v2

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    return-void
.end method
