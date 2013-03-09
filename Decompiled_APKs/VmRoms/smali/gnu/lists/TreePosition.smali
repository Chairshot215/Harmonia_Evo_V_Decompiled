.class public Lgnu/lists/TreePosition;
.super Lgnu/lists/SeqPosition;
.source "TreePosition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field depth:I

.field istack:[I

.field sstack:[Lgnu/lists/AbstractSequence;

.field start:I

.field private xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .locals 1
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreePosition;)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 56
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lgnu/lists/TreePosition;->set(Lgnu/lists/TreePosition;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 45
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 46
    iput-object p1, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lgnu/lists/TreePosition;

    invoke-direct {v0, p0}, Lgnu/lists/TreePosition;-><init>(Lgnu/lists/TreePosition;)V

    return-object v0
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 253
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TreePosition dump depth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/lists/TreePosition;->start:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    if-gt v0, v2, :cond_2

    .line 256
    if-nez v0, :cond_0

    iget-object v2, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v1, v2

    .line 257
    .local v1, seq:Lgnu/lists/AbstractSequence;
    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ipos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    iget v4, p0, Lgnu/lists/TreePosition;->ipos:I

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v1           #seq:Lgnu/lists/AbstractSequence;
    :cond_0
    iget-object v2, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    move-object v1, v2

    goto :goto_1

    .line 258
    .restart local v1       #seq:Lgnu/lists/AbstractSequence;
    :cond_1
    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v5, v0

    aget v4, v4, v5

    goto :goto_2

    .line 260
    .end local v1           #seq:Lgnu/lists/AbstractSequence;
    :cond_2
    return-void
.end method

.method public getAncestor(I)Ljava/lang/Object;
    .locals 3
    .parameter "up"

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 219
    :cond_0
    iget v1, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int v0, v1, p1

    .line 220
    .local v0, i:I
    if-gtz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->getRoot()Lgnu/lists/AbstractSequence;

    move-result-object v1

    goto :goto_0

    .line 222
    :cond_1
    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object v1, v1, v0

    iget-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPosNext()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoot()Lgnu/lists/AbstractSequence;
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public gotoAttributesStart()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoAttributesStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    goto :goto_0
.end method

.method public gotoChildrenStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 175
    :cond_0
    iput v1, p0, Lgnu/lists/TreePosition;->depth:I

    .line 176
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 177
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreePosition;->setPos(I)V

    .line 184
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoChildrenStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public final gotoParent()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoParent(Lgnu/lists/TreePosition;)Z

    move-result v0

    goto :goto_0
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 142
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->popNoRelease()V

    .line 143
    return-void
.end method

.method public popNoRelease()V
    .locals 3

    .prologue
    .line 147
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_0

    .line 149
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 155
    iget-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lgnu/lists/TreePosition;->ipos:I

    goto :goto_0
.end method

.method public push(Lgnu/lists/AbstractSequence;I)V
    .locals 9
    .parameter "child"
    .parameter "iposChild"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 112
    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    iget v6, p0, Lgnu/lists/TreePosition;->start:I

    add-int v0, v5, v6

    .line 113
    .local v0, d:I
    if-ltz v0, :cond_1

    .line 115
    if-nez v0, :cond_2

    .line 117
    new-array v5, v8, [I

    iput-object v5, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 118
    new-array v5, v8, [Lgnu/lists/AbstractSequence;

    iput-object v5, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 131
    :cond_0
    :goto_0
    iget-object v5, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget-object v6, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    aput-object v6, v5, v0

    .line 132
    iget-object v5, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v6, p0, Lgnu/lists/TreePosition;->ipos:I

    aput v6, v5, v0

    .line 134
    :cond_1
    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgnu/lists/TreePosition;->depth:I

    .line 135
    iput-object p1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 136
    iput p2, p0, Lgnu/lists/TreePosition;->ipos:I

    .line 137
    return-void

    .line 120
    :cond_2
    iget-object v5, p0, Lgnu/lists/TreePosition;->istack:[I

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 122
    mul-int/lit8 v2, v0, 0x2

    .line 123
    .local v2, ndepth:I
    new-array v1, v2, [I

    .line 124
    .local v1, itemp:[I
    new-array v4, v2, [Ljava/lang/Object;

    .line 125
    .local v4, xtemp:[Ljava/lang/Object;
    new-array v3, v2, [Lgnu/lists/AbstractSequence;

    .line 126
    .local v3, stemp:[Lgnu/lists/AbstractSequence;
    iget-object v5, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v6, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v5, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v6, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v1, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 129
    iput-object v3, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 228
    :goto_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 231
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->pop()V

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public set(Lgnu/lists/TreePosition;)V
    .locals 7
    .parameter "position"

    .prologue
    .line 67
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->release()V

    .line 68
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    .line 69
    .local v0, d:I
    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 70
    if-gez v0, :cond_0

    .line 72
    iget-object v4, p1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    iput-object v4, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v4, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    array-length v4, v4

    if-gt v4, v0, :cond_2

    .line 76
    :cond_1
    add-int/lit8 v4, v0, 0xa

    new-array v4, v4, [Lgnu/lists/AbstractSequence;

    iput-object v4, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 77
    :cond_2
    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    array-length v4, v4

    if-gt v4, v0, :cond_4

    .line 78
    :cond_3
    add-int/lit8 v4, v0, 0xa

    new-array v4, v4, [I

    iput-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 81
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lgnu/lists/TreePosition;->depth:I

    if-ge v1, v4, :cond_5

    .line 83
    iget v4, p1, Lgnu/lists/TreePosition;->start:I

    add-int v2, v1, v4

    .line 84
    .local v2, j:I
    iget-object v4, p1, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object v3, v4, v2

    .line 85
    .local v3, seq:Lgnu/lists/AbstractSequence;
    iget-object v4, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput-object v3, v4, v5

    .line 86
    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v5, v1

    iget-object v6, p1, Lgnu/lists/TreePosition;->istack:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v6

    aput v6, v4, v5

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v2           #j:I
    .end local v3           #seq:Lgnu/lists/AbstractSequence;
    :cond_5
    iget-object v3, p1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 89
    .restart local v3       #seq:Lgnu/lists/AbstractSequence;
    iput-object v3, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 90
    iget v4, p1, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v4

    iput v4, p0, Lgnu/lists/TreePosition;->ipos:I

    goto :goto_0
.end method
