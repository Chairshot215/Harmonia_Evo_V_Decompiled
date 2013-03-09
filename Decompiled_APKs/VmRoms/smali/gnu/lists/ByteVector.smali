.class public abstract Lgnu/lists/ByteVector;
.super Lgnu/lists/SimpleVector;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[B


# instance fields
.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lgnu/lists/ByteVector;->empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 35
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-le p1, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final byteAtBuffer(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected clearBuffer(II)V
    .locals 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 80
    move v0, p1

    .end local p1
    .local v0, start:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 81
    iget-object v1, p0, Lgnu/lists/ByteVector;->data:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #start:I
    .restart local p1
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    move v0, p1

    .end local p1
    .restart local v0       #start:I
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 47
    ushr-int/lit8 v0, p1, 0x1

    .line 48
    .local v0, index:I
    iget v1, p0, Lgnu/lists/ByteVector;->size:I

    if-lt v0, v1, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v1

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 51
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 56
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    :cond_0
    return-void

    .line 58
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 59
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 60
    .local v0, end:I
    iget v2, p0, Lgnu/lists/ByteVector;->size:I

    if-le v0, v2, :cond_2

    .line 61
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    .line 62
    :cond_2
    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v2

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v0, v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 100
    .local v2, size:I
    new-array v0, v2, [B

    .line 101
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    aput-byte v3, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iput-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    .line 104
    iput v2, p0, Lgnu/lists/ByteVector;->size:I

    .line 105
    return-void
.end method

.method public setBufferLength(I)V
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 21
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v0, v2

    .line 22
    .local v0, oldLength:I
    if-eq v0, p1, :cond_0

    .line 24
    new-array v1, p1, [B

    .line 25
    .local v1, tmp:[B
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    if-ge v0, p1, :cond_1

    move v3, v0

    :goto_0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput-object v1, p0, Lgnu/lists/ByteVector;->data:[B

    .line 29
    .end local v1           #tmp:[B
    :cond_0
    return-void

    .restart local v1       #tmp:[B
    :cond_1
    move v3, p1

    .line 25
    goto :goto_0
.end method

.method public final setByteAt(IB)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 68
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-le p1, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    .line 71
    return-void
.end method

.method public final setByteAtBuffer(IB)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 75
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    .line 76
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget v1, p0, Lgnu/lists/ByteVector;->size:I

    .line 91
    .local v1, size:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method
