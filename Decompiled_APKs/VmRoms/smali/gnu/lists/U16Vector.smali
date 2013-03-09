.class public Lgnu/lists/U16Vector;
.super Lgnu/lists/SimpleVector;
.source "U16Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    sget-object v0, Lgnu/lists/S16Vector;->empty:[S

    iput-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [S

    iput-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    .line 34
    iput p1, p0, Lgnu/lists/U16Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1
    .parameter "size"
    .parameter "value"

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    new-array v0, p1, [S

    .line 25
    .local v0, array:[S
    iput-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    .line 26
    iput p1, p0, Lgnu/lists/U16Vector;->size:I

    .line 27
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 28
    aput-short p2, v0, p1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/U16Vector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([S)V
    .locals 1
    .parameter "data"

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/U16Vector;->data:[S

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/U16Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 119
    move v0, p1

    .end local p1
    .local v0, start:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 120
    iget-object v1, p0, Lgnu/lists/U16Vector;->data:[S

    add-int/lit8 p1, v0, 0x1

    .end local v0           #start:I
    .restart local p1
    const/4 v2, 0x0

    aput-short v2, v1, v0

    move v0, p1

    .end local p1
    .restart local v0       #start:I
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 153
    check-cast p1, Lgnu/lists/U16Vector;

    .end local p1
    invoke-static {p0, p1}, Lgnu/lists/U16Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 3
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 132
    ushr-int/lit8 v0, p1, 0x1

    .line 133
    .local v0, index:I
    iget v1, p0, Lgnu/lists/U16Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 136
    :goto_0
    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v1, v1, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 4
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 141
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    return-void

    .line 143
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 144
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 145
    .local v0, end:I
    iget v2, p0, Lgnu/lists/U16Vector;->size:I

    if-le v0, v2, :cond_2

    .line 146
    iget v0, p0, Lgnu/lists/U16Vector;->size:I

    .line 147
    :cond_2
    :goto_0
    if-ge v1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v2, v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    iget v0, p0, Lgnu/lists/U16Vector;->size:I

    if-le p1, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(S)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(S)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x13

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "u16"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

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
    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 172
    .local v2, size:I
    new-array v0, v2, [S

    .line 173
    .local v0, data:[S
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v3

    aput-short v3, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    .line 176
    iput v2, p0, Lgnu/lists/U16Vector;->size:I

    .line 177
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 100
    iget-object v1, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v1, p1

    .line 101
    .local v0, old:S
    iget-object v1, p0, Lgnu/lists/U16Vector;->data:[S

    invoke-static {p2}, Lgnu/lists/Convert;->toShortUnsigned(Ljava/lang/Object;)S

    move-result v2

    aput-short v2, v1, p1

    .line 102
    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(S)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lgnu/lists/U16Vector;->data:[S

    array-length v0, v2

    .line 58
    .local v0, oldLength:I
    if-eq v0, p1, :cond_0

    .line 60
    new-array v1, p1, [S

    .line 61
    .local v1, tmp:[S
    iget-object v2, p0, Lgnu/lists/U16Vector;->data:[S

    if-ge v0, p1, :cond_1

    move v3, v0

    :goto_0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lgnu/lists/U16Vector;->data:[S

    .line 65
    .end local v1           #tmp:[S
    :cond_0
    return-void

    .restart local v1       #tmp:[S
    :cond_1
    move v3, p1

    .line 61
    goto :goto_0
.end method

.method public final setShortAt(IS)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 107
    iget v0, p0, Lgnu/lists/U16Vector;->size:I

    if-le p1, v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aput-short p2, v0, p1

    .line 110
    return-void
.end method

.method public final setShortAtBuffer(IS)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aput-short p2, v0, p1

    .line 115
    return-void
.end method

.method public final shortAt(I)S
    .locals 1
    .parameter "index"

    .prologue
    .line 71
    iget v0, p0, Lgnu/lists/U16Vector;->size:I

    if-le p1, v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public final shortAtBuffer(I)S
    .locals 1
    .parameter "index"

    .prologue
    .line 78
    iget-object v0, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v0, v0, p1

    return v0
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
    .line 162
    iget v1, p0, Lgnu/lists/U16Vector;->size:I

    .line 163
    .local v1, size:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    iget-object v2, p0, Lgnu/lists/U16Vector;->data:[S

    aget-short v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
