.class public Lgnu/lists/F64Vector;
.super Lgnu/lists/SimpleVector;
.source "F64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[D


# instance fields
.field data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lgnu/lists/F64Vector;->empty:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/F64Vector;->empty:[D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 35
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1
    .parameter "size"
    .parameter "value"

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [D

    .line 26
    .local v0, array:[D
    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 27
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    .line 28
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 29
    aput-wide p2, v0, p1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 45
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/F64Vector;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .parameter "data"

    .prologue
    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 41
    array-length v0, p1

    iput v0, p0, Lgnu/lists/F64Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 127
    move v0, p1

    .end local p1
    .local v0, start:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 128
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    add-int/lit8 p1, v0, 0x1

    .end local v0           #start:I
    .restart local p1
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    move v0, p1

    .end local p1
    .restart local v0       #start:I
    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 13
    .parameter "obj"

    .prologue
    .line 166
    move-object v0, p1

    check-cast v0, Lgnu/lists/F64Vector;

    move-object v11, v0

    .line 167
    .local v11, vec2:Lgnu/lists/F64Vector;
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 168
    .local v1, arr1:[D
    iget-object v2, v11, Lgnu/lists/F64Vector;->data:[D

    .line 169
    .local v2, arr2:[D
    iget v5, p0, Lgnu/lists/F64Vector;->size:I

    .line 170
    .local v5, n1:I
    iget v6, v11, Lgnu/lists/F64Vector;->size:I

    .line 171
    .local v6, n2:I
    if-le v5, v6, :cond_0

    move v4, v6

    .line 172
    .local v4, n:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 174
    aget-wide v7, v1, v3

    .line 175
    .local v7, v1:D
    aget-wide v9, v2, v3

    .line 176
    .local v9, v2:D
    cmpl-double v12, v7, v9

    if-eqz v12, :cond_2

    .line 177
    cmpl-double v12, v7, v9

    if-lez v12, :cond_1

    const/4 v12, 0x1

    .line 179
    .end local v7           #v1:D
    .end local v9           #v2:D
    :goto_2
    return v12

    .end local v3           #i:I
    .end local v4           #n:I
    :cond_0
    move v4, v5

    .line 171
    goto :goto_0

    .line 177
    .restart local v3       #i:I
    .restart local v4       #n:I
    .restart local v7       #v1:D
    .restart local v9       #v2:D
    :cond_1
    const/4 v12, -0x1

    goto :goto_2

    .line 172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    .end local v7           #v1:D
    .end local v9           #v2:D
    :cond_3
    sub-int v12, v5, v6

    goto :goto_2
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 3
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 140
    ushr-int/lit8 v0, p1, 0x1

    .line 141
    .local v0, index:I
    iget v1, p0, Lgnu/lists/F64Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 143
    :cond_0
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v1, v0

    invoke-interface {p2, v1, v2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 144
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 4
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 149
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 151
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 152
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 153
    .local v0, end:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v2, v2, v1

    invoke-interface {p3, v2, v3}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final doubleAt(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 72
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-lt p1, v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final doubleAtBuffer(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 84
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-le p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 91
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x1a

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "f64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v0, v0, p1

    double-to-int v0, v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 198
    .local v2, size:I
    new-array v0, v2, [D

    .line 199
    .local v0, data:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 202
    iput v2, p0, Lgnu/lists/F64Vector;->size:I

    .line 203
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 113
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, old:Ljava/lang/Object;
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    invoke-static {p2}, Lgnu/lists/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    aput-wide v2, v1, p1

    .line 115
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v0, v2

    .line 59
    .local v0, oldLength:I
    if-eq v0, p1, :cond_0

    .line 61
    new-array v1, p1, [D

    .line 62
    .local v1, tmp:[D
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    if-ge v0, p1, :cond_1

    move v3, v0

    :goto_0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 66
    .end local v1           #tmp:[D
    :cond_0
    return-void

    .restart local v1       #tmp:[D
    :cond_1
    move v3, p1

    .line 62
    goto :goto_0
.end method

.method public final setDoubleAt(ID)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 101
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-le p1, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aput-wide p2, v0, p1

    .line 104
    return-void
.end method

.method public final setDoubleAtBuffer(ID)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 108
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aput-wide p2, v0, p1

    .line 109
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget v1, p0, Lgnu/lists/F64Vector;->size:I

    .line 189
    .local v1, size:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method
