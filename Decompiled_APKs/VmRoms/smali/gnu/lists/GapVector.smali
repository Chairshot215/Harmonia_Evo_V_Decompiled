.class public Lgnu/lists/GapVector;
.super Lgnu/lists/AbstractSequence;
.source "GapVector.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field public base:Lgnu/lists/SimpleVector;

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 22
    iget v0, p1, Lgnu/lists/SimpleVector;->size:I

    iput v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 23
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "o"

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 185
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 187
    return-void
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 3
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 175
    ushr-int/lit8 v0, p1, 0x1

    .line 176
    .local v0, index:I
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 177
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 178
    :cond_0
    invoke-virtual {p0, v0, p2}, Lgnu/lists/GapVector;->add(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 4
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 241
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 244
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 245
    .local v0, end:I
    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v1, v3, :cond_2

    .line 247
    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le v0, v3, :cond_4

    move v2, v0

    .line 248
    .local v2, lim:I
    :goto_1
    shl-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p1, v3, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 250
    .end local v2           #lim:I
    :cond_2
    iget v3, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le v0, v3, :cond_0

    .line 252
    iget v3, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-ge v1, v3, :cond_3

    iget v3, p0, Lgnu/lists/GapVector;->gapEnd:I

    move v1, v3

    .line 253
    :cond_3
    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, p2, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_0

    .line 247
    :cond_4
    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    move v2, v3

    goto :goto_1
.end method

.method public createPos(IZ)I
    .locals 2
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 220
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le p1, v0, :cond_0

    .line 221
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 223
    :cond_0
    shl-int/lit8 v0, p1, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, v2, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 6
    .parameter "fromPos"
    .parameter "toPos"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    .line 71
    if-ne p1, v5, :cond_0

    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    move v0, v4

    .line 72
    .local v0, from:I
    :goto_0
    if-ne p2, v5, :cond_1

    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    move v3, v4

    .line 73
    .local v3, to:I
    :goto_1
    iget v4, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v4, v3, :cond_2

    iget v4, p0, Lgnu/lists/GapVector;->gapStart:I

    move v2, v4

    .line 74
    .local v2, limit:I
    :goto_2
    move v1, v0

    .local v1, i:I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 75
    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, v1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    .end local v0           #from:I
    .end local v1           #i:I
    .end local v2           #limit:I
    .end local v3           #to:I
    :cond_0
    ushr-int/lit8 v4, p1, 0x1

    move v0, v4

    goto :goto_0

    .line 72
    .restart local v0       #from:I
    :cond_1
    ushr-int/lit8 v4, p2, 0x1

    move v3, v4

    goto :goto_1

    .restart local v3       #to:I
    :cond_2
    move v2, v3

    .line 73
    goto :goto_2

    .line 76
    .restart local v1       #i:I
    .restart local v2       #limit:I
    :cond_3
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    :goto_4
    if-ge v1, v3, :cond_4

    .line 77
    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, v1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 78
    :cond_4
    return-void
.end method

.method protected final gapReserve(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 95
    return-void
.end method

.method protected gapReserve(II)V
    .locals 8
    .parameter "where"
    .parameter "needed"

    .prologue
    const/16 v7, 0x10

    .line 108
    iget v5, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v6, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v5, v6

    if-le p2, v5, :cond_3

    .line 111
    iget-object v5, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v3, v5, Lgnu/lists/SimpleVector;->size:I

    .line 112
    .local v3, oldLength:I
    if-ge v3, v7, :cond_2

    move v2, v7

    .line 113
    .local v2, newLength:I
    :goto_0
    iget v5, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v6, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v5, v6

    sub-int v4, v3, v5

    .line 114
    .local v4, size:I
    add-int v0, v4, p2

    .line 115
    .local v0, minLength:I
    if-ge v2, v0, :cond_0

    .line 116
    move v2, v0

    .line 117
    :cond_0
    sub-int v5, v2, v4

    add-int v1, v5, p1

    .line 118
    .local v1, newGapEnd:I
    iget-object v5, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v6, p0, Lgnu/lists/GapVector;->gapStart:I

    iget v7, p0, Lgnu/lists/GapVector;->gapEnd:I

    invoke-virtual {v5, v6, v7, p1, v1}, Lgnu/lists/SimpleVector;->resizeShift(IIII)V

    .line 119
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 120
    iput v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 138
    .end local v0           #minLength:I
    .end local v1           #newGapEnd:I
    .end local v2           #newLength:I
    .end local v3           #oldLength:I
    .end local v4           #size:I
    :cond_1
    :goto_1
    return-void

    .line 112
    .restart local v3       #oldLength:I
    :cond_2
    mul-int/lit8 v5, v3, 0x2

    move v2, v5

    goto :goto_0

    .line 122
    .end local v3           #oldLength:I
    :cond_3
    iget v5, p0, Lgnu/lists/GapVector;->gapStart:I

    if-eq p1, v5, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 50
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 51
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 52
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextKind(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSegment(II)I
    .locals 3
    .parameter "where"
    .parameter "len"

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/lists/GapVector;->size()I

    move-result v0

    .line 148
    .local v0, length:I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 149
    :cond_0
    const/4 v1, -0x1

    .line 169
    :goto_0
    return v1

    .line 150
    :cond_1
    if-gez p2, :cond_3

    .line 151
    const/4 p2, 0x0

    .line 156
    :cond_2
    :goto_1
    add-int v1, p1, p2

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-gt v1, v2, :cond_4

    move v1, p1

    .line 157
    goto :goto_0

    .line 152
    :cond_3
    add-int v1, p1, p2

    if-le v1, v0, :cond_2

    .line 153
    sub-int p2, v0, p1

    goto :goto_1

    .line 158
    :cond_4
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v1, :cond_5

    .line 159
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_0

    .line 161
    :cond_5
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, p1

    shr-int/lit8 v2, p2, 0x1

    if-le v1, v2, :cond_6

    .line 163
    add-int v1, p1, p2

    invoke-virtual {p0, v1}, Lgnu/lists/GapVector;->shiftGap(I)V

    move v1, p1

    .line 164
    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 169
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 3
    .parameter "ipos"

    .prologue
    .line 36
    ushr-int/lit8 v0, p1, 0x1

    .line 37
    .local v0, index:I
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 38
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 39
    :cond_0
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 228
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected nextIndex(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    .line 233
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    move v0, v1

    .line 234
    .local v0, index:I
    :goto_0
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le v0, v1, :cond_0

    .line 235
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 236
    :cond_0
    return v0

    .line 233
    .end local v0           #index:I
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method protected removePosRange(II)V
    .locals 3
    .parameter "ipos0"
    .parameter "ipos1"

    .prologue
    .line 191
    ushr-int/lit8 p1, p1, 0x1

    .line 192
    ushr-int/lit8 p2, p2, 0x1

    .line 193
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p1, v0, :cond_3

    .line 194
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int v0, p1, v0

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 197
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 200
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 202
    :cond_1
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p2, v0, :cond_2

    .line 204
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 205
    iput p2, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 207
    :cond_2
    return-void

    .line 195
    :cond_3
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p2, v0, :cond_0

    .line 196
    invoke-virtual {p0, p2}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 59
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected shiftGap(I)V
    .locals 4
    .parameter "newGapStart"

    .prologue
    .line 82
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int v0, p1, v1

    .line 83
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 84
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {v1, v2, v3, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 87
    :cond_0
    :goto_0
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 88
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 89
    return-void

    .line 85
    :cond_1
    if-gez v0, :cond_0

    .line 86
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v2, v0

    neg-int v3, v0

    invoke-virtual {v1, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method
