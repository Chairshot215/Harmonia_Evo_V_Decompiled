.class public Lgnu/lists/BitVector;
.super Lgnu/lists/SimpleVector;
.source "BitVector.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field protected static empty:[Z


# instance fields
.field data:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Z

    sput-object v0, Lgnu/lists/BitVector;->empty:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 16
    sget-object v0, Lgnu/lists/BitVector;->empty:[Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 34
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "size"
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    new-array v0, p1, [Z

    .line 22
    .local v0, array:[Z
    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 23
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    .line 24
    if-eqz p2, :cond_0

    .line 26
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 27
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

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

    new-array v0, v0, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/BitVector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .parameter "data"

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/BitVector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method public final booleanAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 71
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-le p1, v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public final booleanAtBuffer(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 78
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method protected clearBuffer(II)V
    .locals 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 114
    move v0, p1

    .end local p1
    .local v0, start:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 115
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    add-int/lit8 p1, v0, 0x1

    .end local v0           #start:I
    .restart local p1
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    move v0, p1

    .end local p1
    .restart local v0       #start:I
    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 127
    ushr-int/lit8 v0, p1, 0x1

    .line 128
    .local v0, index:I
    iget v1, p0, Lgnu/lists/BitVector;->size:I

    if-lt v0, v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 130
    :cond_0
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 131
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 136
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 138
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 139
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 140
    .local v0, end:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 141
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v2, v2, v1

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-le p1, v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 90
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x1b

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "b"

    return-object v0
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
    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 160
    .local v2, size:I
    new-array v0, v2, [Z

    .line 161
    .local v0, data:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 164
    iput v2, p0, Lgnu/lists/BitVector;->size:I

    .line 165
    return-void
.end method

.method public final setBooleanAt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 102
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-le p1, v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    .line 105
    return-void
.end method

.method public final setBooleanAtBuffer(IZ)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    .line 110
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 95
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v1, p1

    .line 96
    .local v0, old:Z
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    invoke-static {p2}, Lgnu/lists/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 97
    invoke-static {v0}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v0, v2

    .line 58
    .local v0, oldLength:I
    if-eq v0, p1, :cond_0

    .line 60
    new-array v1, p1, [Z

    .line 61
    .local v1, tmp:[Z
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    if-ge v0, p1, :cond_1

    move v3, v0

    :goto_0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 65
    .end local v1           #tmp:[Z
    :cond_0
    return-void

    .restart local v1       #tmp:[Z
    :cond_1
    move v3, p1

    .line 61
    goto :goto_0
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
    .line 150
    iget v1, p0, Lgnu/lists/BitVector;->size:I

    .line 151
    .local v1, size:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
