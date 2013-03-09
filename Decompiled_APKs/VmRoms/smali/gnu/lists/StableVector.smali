.class public Lgnu/lists/StableVector;
.super Lgnu/lists/GapVector;
.source "StableVector.java"


# static fields
.field static final END_POSITION:I = 0x1

.field protected static final FREE_POSITION:I = -0x2

.field static final START_POSITION:I


# instance fields
.field protected free:I

.field protected positions:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lgnu/lists/GapVector;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Lgnu/lists/GapVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 79
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    .line 80
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aput v2, v1, v2

    .line 81
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    invoke-virtual {p1}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lgnu/lists/StableVector;->free:I

    .line 83
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v1

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, v3, :cond_0

    .line 85
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget v2, p0, Lgnu/lists/StableVector;->free:I

    aput v2, v1, v0

    .line 86
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPos(ILjava/lang/Object;)I
    .locals 4
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 286
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, p1

    .line 287
    .local v1, ppos:I
    ushr-int/lit8 v0, v1, 0x1

    .line 288
    .local v0, index:I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v2, :cond_0

    .line 289
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 291
    :cond_0
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 293
    if-nez p1, :cond_2

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 298
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lgnu/lists/StableVector;->add(ILjava/lang/Object;)V

    .line 299
    return p1

    .line 296
    :cond_2
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v1, 0x1

    aput v3, v2, p1

    goto :goto_0
.end method

.method protected adjustPositions(III)V
    .locals 6
    .parameter "low"
    .parameter "high"
    .parameter "delta"

    .prologue
    const/high16 v5, -0x8000

    .line 263
    iget v3, p0, Lgnu/lists/StableVector;->free:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_0

    .line 264
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 269
    :cond_0
    xor-int/2addr p1, v5

    .line 270
    xor-int/2addr p2, v5

    .line 272
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v3

    .local v0, i:I
    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 274
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v3, v0

    .line 275
    .local v2, pos:I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 277
    xor-int v1, v2, v5

    .line 278
    .local v1, index:I
    if-lt v1, p1, :cond_1

    if-gt v1, p2, :cond_1

    .line 279
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    add-int v4, v2, p3

    aput v4, v3, v0

    goto :goto_0

    .line 282
    .end local v1           #index:I
    .end local v2           #pos:I
    :cond_2
    return-void
.end method

.method protected allocPositionIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 97
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 98
    :cond_0
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    if-gez v4, :cond_2

    .line 100
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v4

    .line 101
    .local v1, oldLength:I
    mul-int/lit8 v4, v1, 0x2

    new-array v3, v4, [I

    .line 102
    .local v3, tmp:[I
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    invoke-static {v4, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    mul-int/lit8 v0, v1, 0x2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_1

    .line 105
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    aput v4, v3, v0

    .line 106
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 108
    :cond_1
    iput-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    .line 110
    .end local v0           #i:I
    .end local v1           #oldLength:I
    .end local v3           #tmp:[I
    :cond_2
    iget v2, p0, Lgnu/lists/StableVector;->free:I

    .line 111
    .local v2, pos:I
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    iget v5, p0, Lgnu/lists/StableVector;->free:I

    aget v4, v4, v5

    iput v4, p0, Lgnu/lists/StableVector;->free:I

    .line 112
    return v2
.end method

.method protected chainFreelist()V
    .locals 4

    .prologue
    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lgnu/lists/StableVector;->free:I

    .line 42
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v2

    .local v0, i:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 44
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, v0

    .line 45
    .local v1, pos:I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    iget v3, p0, Lgnu/lists/StableVector;->free:I

    aput v3, v2, v0

    .line 48
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 51
    .end local v1           #pos:I
    :cond_1
    return-void
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 2
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 341
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-super {p0, v0, v1, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 342
    return-void
.end method

.method public copyPos(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    .line 180
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 183
    .local v0, i:I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v2, p1

    aput v2, v1, v0

    .line 184
    move p1, v0

    .line 186
    .end local v0           #i:I
    :cond_0
    return p1
.end method

.method public createPos(IZ)I
    .locals 5
    .parameter "index"
    .parameter "isAfter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v1, v3

    .line 125
    :goto_0
    return v1

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lgnu/lists/StableVector;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    move v1, v4

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-gt p1, v1, :cond_2

    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_3

    .line 122
    :cond_2
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 123
    :cond_3
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 124
    .local v0, ipos:I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    shl-int/lit8 v2, p1, 0x1

    if-eqz p2, :cond_4

    move v3, v4

    :cond_4
    or-int/2addr v2, v3

    aput v2, v1, v0

    move v1, v0

    .line 125
    goto :goto_0
.end method

.method public endPos()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 2
    .parameter "fromPos"
    .parameter "toPos"
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/StableVector;->fillPosRange(IILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected gapReserve(II)V
    .locals 8
    .parameter "where"
    .parameter "needed"

    .prologue
    .line 227
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 228
    .local v1, oldGapEnd:I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 229
    .local v2, oldGapStart:I
    sub-int v4, v1, v2

    if-le p2, v4, :cond_2

    .line 231
    iget-object v4, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v3, v4, Lgnu/lists/SimpleVector;->size:I

    .line 232
    .local v3, oldLength:I
    invoke-super {p0, p1, p2}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 233
    iget-object v4, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v4, Lgnu/lists/SimpleVector;->size:I

    .line 234
    .local v0, newLength:I
    if-ne p1, v2, :cond_1

    .line 235
    shl-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v0, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v0, v3

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 248
    .end local v0           #newLength:I
    .end local v3           #oldLength:I
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v0       #newLength:I
    .restart local v3       #oldLength:I
    :cond_1
    shl-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v2, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 243
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v0, 0x1

    or-int/lit8 v5, v5, 0x1

    iget v6, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v7, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_0

    .line 246
    .end local v0           #newLength:I
    .end local v3           #oldLength:I
    :cond_2
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    if-eq p1, v4, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->shiftGap(I)V

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 4
    .parameter "ipos"

    .prologue
    .line 135
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, p1

    .line 136
    .local v1, ppos:I
    ushr-int/lit8 v0, v1, 0x1

    .line 137
    .local v0, index:I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v2, :cond_0

    .line 138
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 139
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 130
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    .line 161
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p1

    ushr-int/lit8 v0, v1, 0x1

    .line 162
    .local v0, index:I
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-le v0, v1, :cond_0

    .line 163
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 164
    :cond_0
    return v0
.end method

.method public nextPos(I)I
    .locals 5
    .parameter "ipos"

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, p1

    .line 145
    .local v1, ppos:I
    ushr-int/lit8 v0, v1, 0x1

    .line 146
    .local v0, index:I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v2, :cond_0

    .line 147
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->releasePos(I)V

    move v2, v4

    .line 156
    :goto_0
    return v2

    .line 153
    :cond_1
    if-nez p1, :cond_2

    .line 154
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 155
    :cond_2
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v1, 0x1

    aput v3, v2, p1

    move v2, p1

    .line 156
    goto :goto_0
.end method

.method public releasePos(I)V
    .locals 2
    .parameter "ipos"

    .prologue
    .line 169
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 171
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 173
    :cond_0
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    iget v1, p0, Lgnu/lists/StableVector;->free:I

    aput v1, v0, p1

    .line 174
    iput p1, p0, Lgnu/lists/StableVector;->free:I

    .line 176
    :cond_1
    return-void
.end method

.method protected removePosRange(II)V
    .locals 8
    .parameter "ipos0"
    .parameter "ipos1"

    .prologue
    .line 304
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    aget v6, v6, p1

    iget-object v7, p0, Lgnu/lists/StableVector;->positions:[I

    aget v7, v7, p2

    invoke-super {p0, v6, v7}, Lgnu/lists/GapVector;->removePosRange(II)V

    .line 307
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 308
    .local v4, low:I
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 309
    .local v0, high:I
    iget v6, p0, Lgnu/lists/StableVector;->free:I

    const/4 v7, -0x1

    if-lt v6, v7, :cond_0

    .line 310
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 311
    :cond_0
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v6

    .local v1, i:I
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_4

    .line 313
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    aget v5, v6, v1

    .line 314
    .local v5, pos:I
    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    .line 316
    shr-int/lit8 v2, v5, 0x1

    .line 317
    .local v2, index:I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move v3, v6

    .line 318
    .local v3, isAfter:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 320
    if-lt v2, v4, :cond_1

    if-ge v2, v0, :cond_1

    .line 321
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    iget v7, p0, Lgnu/lists/StableVector;->gapEnd:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    goto :goto_0

    .line 317
    .end local v3           #isAfter:Z
    :cond_2
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1

    .line 325
    .restart local v3       #isAfter:Z
    :cond_3
    if-le v2, v4, :cond_1

    if-gt v2, v0, :cond_1

    .line 326
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    iget v7, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    goto :goto_0

    .line 330
    .end local v2           #index:I
    .end local v3           #isAfter:Z
    .end local v5           #pos:I
    :cond_4
    return-void
.end method

.method protected shiftGap(I)V
    .locals 7
    .parameter "newGapStart"

    .prologue
    .line 196
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 197
    .local v4, oldGapStart:I
    sub-int v1, p1, v4

    .line 199
    .local v1, delta:I
    if-lez v1, :cond_1

    .line 201
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 202
    .local v3, low:I
    add-int v2, v3, v1

    .line 203
    .local v2, high:I
    sub-int v5, v4, v3

    shl-int/lit8 v0, v5, 0x1

    .line 206
    .local v0, adjust:I
    shl-int/lit8 v3, v3, 0x1

    .line 207
    shl-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .line 218
    :goto_0
    invoke-super {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 220
    invoke-virtual {p0, v3, v2, v0}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 221
    .end local v0           #adjust:I
    .end local v2           #high:I
    .end local v3           #low:I
    :cond_0
    return-void

    .line 209
    :cond_1
    if-eq p1, v4, :cond_0

    .line 214
    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 215
    .restart local v3       #low:I
    shl-int/lit8 v2, v4, 0x1

    .line 216
    .restart local v2       #high:I
    iget v5, p0, Lgnu/lists/StableVector;->gapEnd:I

    sub-int/2addr v5, v4

    shl-int/lit8 v0, v5, 0x1

    .restart local v0       #adjust:I
    goto :goto_0
.end method

.method public startPos()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected unchainFreelist()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 56
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 58
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, v0

    .line 59
    .local v1, next:I
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aput v3, v2, v0

    .line 60
    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    .end local v1           #next:I
    :cond_0
    iput v3, p0, Lgnu/lists/StableVector;->free:I

    .line 63
    return-void
.end method
