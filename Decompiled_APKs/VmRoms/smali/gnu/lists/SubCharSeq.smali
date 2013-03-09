.class public Lgnu/lists/SubCharSeq;
.super Lgnu/lists/SubSequence;
.source "SubCharSeq.java"

# interfaces
.implements Lgnu/lists/CharSeq;


# direct methods
.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 0
    .parameter "base"
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    .line 9
    return-void
.end method

.method private subCharSeq(II)Lgnu/lists/SubCharSeq;
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 120
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    .line 121
    .local v0, sz:I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-le p2, v0, :cond_1

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 123
    :cond_1
    new-instance v1, Lgnu/lists/SubCharSeq;

    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget-object v3, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v4, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v3

    iget-object v4, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v5, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p2, v6}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v1
.end method


# virtual methods
.method public charAt(I)C
    .locals 3
    .parameter "index"

    .prologue
    .line 20
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 22
    :cond_1
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 23
    .local v0, start:I
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    add-int v1, v0, p1

    invoke-interface {p0, v1}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    return v1
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 4
    .parameter "start"
    .parameter "count"
    .parameter "out"

    .prologue
    .line 102
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 103
    .local v0, index0:I
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 104
    .local v1, index1:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-le v2, v1, :cond_1

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 106
    :cond_1
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    add-int v2, v0, p1

    invoke-interface {p0, v2, p2, p3}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    .line 107
    return-void
.end method

.method public fill(C)V
    .locals 4
    .parameter "value"

    .prologue
    .line 45
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 46
    .local v0, index0:I
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 47
    .local v1, index1:I
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    invoke-interface {p0, v0, v1, p1}, Lgnu/lists/CharSeq;->fill(IIC)V

    .line 48
    return-void
.end method

.method public fill(IIC)V
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "value"

    .prologue
    .line 52
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 53
    .local v0, index0:I
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 54
    .local v1, index1:I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    add-int v2, v0, p2

    if-le v2, v1, :cond_1

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 56
    :cond_1
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    add-int v2, v0, p1

    add-int v3, v0, p2

    invoke-interface {p0, v2, v3, p3}, Lgnu/lists/CharSeq;->fill(IIC)V

    .line 57
    return-void
.end method

.method public getChars(II[CI)V
    .locals 3
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 30
    move v1, p1

    .local v1, i:I
    move v0, p4

    .end local p4
    .local v0, dstBegin:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 31
    add-int/lit8 p4, v0, 0x1

    .end local v0           #dstBegin:I
    .restart local p4
    invoke-virtual {p0, v1}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v2

    aput-char v2, p3, v0

    .line 30
    add-int/lit8 v1, v1, 0x1

    move v0, p4

    .end local p4
    .restart local v0       #dstBegin:I
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    return v0
.end method

.method public setCharAt(IC)V
    .locals 3
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 38
    :cond_1
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 39
    .local v0, start:I
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    add-int v1, v0, p1

    invoke-interface {p0, v1, p2}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 40
    return-void
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIx"
    .parameter "toIx"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v2

    .line 112
    .local v2, sz:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v1, sbuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 4
    .parameter "start"
    .parameter "count"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 64
    .local v0, index0:I
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 65
    .local v1, index1:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-le v2, v1, :cond_1

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 67
    :cond_1
    iget-object p0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/CharSeq;

    add-int v2, v0, p1

    invoke-interface {p0, v2, p2, p3}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    .line 68
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 3
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 74
    .local v0, index0:I
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/CharSeq;

    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    .line 75
    return-void
.end method
