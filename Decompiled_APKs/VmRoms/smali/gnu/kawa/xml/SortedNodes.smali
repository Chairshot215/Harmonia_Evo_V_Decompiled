.class public Lgnu/kawa/xml/SortedNodes;
.super Lgnu/kawa/xml/Nodes;
.source "SortedNodes.java"


# instance fields
.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->nesting:I

    return-void
.end method


# virtual methods
.method compareIndex(ILgnu/lists/AbstractSequence;I)I
    .locals 4
    .parameter "index"
    .parameter "seq2"
    .parameter "ipos2"

    .prologue
    .line 20
    iget-object v2, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    aget-char v0, v2, p1

    .line 21
    .local v0, datum:I
    const v2, 0xf10f

    if-eq v0, v2, :cond_0

    .line 22
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid kind of value to compare"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_0
    iget-object v2, p0, Lgnu/kawa/xml/SortedNodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v3

    aget-object v1, v2, v3

    check-cast v1, Lgnu/lists/AbstractSequence;

    .line 24
    .local v1, seq:Lgnu/lists/AbstractSequence;
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v2

    return v2
.end method

.method find(IILgnu/lists/AbstractSequence;I)I
    .locals 5
    .parameter "start"
    .parameter "count"
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, lo:I
    move v1, p2

    .line 42
    .local v1, hi:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 44
    add-int v4, v2, v1

    ushr-int/lit8 v3, v4, 0x1

    .line 45
    .local v3, mid:I
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, p1

    invoke-virtual {p0, v4, p3, p4}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v0

    .line 46
    .local v0, cmp:I
    if-nez v0, :cond_0

    .line 47
    const/4 v4, -0x1

    .line 53
    .end local v0           #cmp:I
    .end local v3           #mid:I
    :goto_1
    return v4

    .line 48
    .restart local v0       #cmp:I
    .restart local v3       #mid:I
    :cond_0
    if-lez v0, :cond_1

    .line 49
    move v1, v3

    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 53
    .end local v0           #cmp:I
    .end local v3           #mid:I
    :cond_2
    mul-int/lit8 v4, v2, 0x5

    add-int/2addr v4, p1

    goto :goto_1
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 9
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 58
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-lez v5, :cond_2

    .line 60
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    const/4 v6, 0x5

    sub-int v4, v5, v6

    .line 61
    .local v4, lastIndex:I
    invoke-virtual {p0, v4, p1, p2}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v0

    .line 62
    .local v0, cmp:I
    if-gez v0, :cond_3

    .line 65
    iget v3, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 66
    .local v3, i:I
    iget-object v5, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    array-length v2, v5

    .line 69
    .local v2, end:I
    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x5

    invoke-virtual {p0, v3, v5, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v3

    .line 70
    if-gez v3, :cond_1

    .line 97
    .end local v0           #cmp:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #lastIndex:I
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0       #cmp:I
    .restart local v2       #end:I
    .restart local v3       #i:I
    .restart local v4       #lastIndex:I
    :cond_1
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int v1, v3, v5

    .line 73
    .local v1, delta:I
    if-lez v1, :cond_2

    .line 75
    iget-object v5, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v6, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    iget-object v7, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v8, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    invoke-static {v5, v6, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput v3, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 77
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    add-int/2addr v5, v1

    iput v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 96
    .end local v0           #cmp:I
    .end local v1           #delta:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #lastIndex:I
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0

    .line 80
    .restart local v0       #cmp:I
    .restart local v4       #lastIndex:I
    :cond_3
    if-eqz v0, :cond_0

    .line 84
    const/4 v5, 0x0

    div-int/lit8 v6, v4, 0x5

    invoke-virtual {p0, v5, v6, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v3

    .line 85
    .restart local v3       #i:I
    if-ltz v3, :cond_0

    .line 87
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    sub-int v1, v5, v3

    .line 88
    .restart local v1       #delta:I
    if-lez v1, :cond_2

    .line 90
    iget-object v5, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget-object v6, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v7, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v7, v1

    invoke-static {v5, v3, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput v3, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 92
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v5, v1

    iput v5, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    goto :goto_1
.end method
