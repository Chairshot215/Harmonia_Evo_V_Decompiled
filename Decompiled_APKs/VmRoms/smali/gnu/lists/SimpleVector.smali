.class public abstract Lgnu/lists/SimpleVector;
.super Lgnu/lists/AbstractSequence;
.source "SimpleVector.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Lgnu/lists/Array;


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method protected static compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 7
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 388
    iget v4, p0, Lgnu/lists/SimpleVector;->size:I

    .line 389
    .local v4, n1:I
    iget v5, p1, Lgnu/lists/SimpleVector;->size:I

    .line 390
    .local v5, n2:I
    if-le v4, v5, :cond_0

    move v3, v5

    .line 391
    .local v3, n:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 393
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v1

    .line 394
    .local v1, i1:I
    invoke-virtual {p1, v0}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v2

    .line 395
    .local v2, i2:I
    const/16 v6, 0xb

    if-eq v6, v2, :cond_2

    .line 396
    if-le v1, v2, :cond_1

    const/4 v6, 0x1

    .line 398
    .end local v1           #i1:I
    .end local v2           #i2:I
    :goto_2
    return v6

    .end local v0           #i:I
    .end local v3           #n:I
    :cond_0
    move v3, v4

    .line 390
    goto :goto_0

    .line 396
    .restart local v0       #i:I
    .restart local v1       #i1:I
    .restart local v2       #i2:I
    .restart local v3       #n:I
    :cond_1
    const/4 v6, -0x1

    goto :goto_2

    .line 391
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v1           #i1:I
    .end local v2           #i2:I
    :cond_3
    sub-int v6, v4, v5

    goto :goto_2
.end method

.method protected static compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 9
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 403
    iget v6, p0, Lgnu/lists/SimpleVector;->size:I

    .line 404
    .local v6, n1:I
    iget v7, p1, Lgnu/lists/SimpleVector;->size:I

    .line 405
    .local v7, n2:I
    if-le v6, v7, :cond_0

    move v5, v7

    .line 406
    .local v5, n:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 408
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v1

    .line 409
    .local v1, i1:J
    invoke-virtual {p1, v0}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v3

    .line 410
    .local v3, i2:J
    cmp-long v8, v1, v3

    if-eqz v8, :cond_2

    .line 411
    cmp-long v8, v1, v3

    if-lez v8, :cond_1

    const/4 v8, 0x1

    .line 413
    .end local v1           #i1:J
    .end local v3           #i2:J
    :goto_2
    return v8

    .end local v0           #i:I
    .end local v5           #n:I
    :cond_0
    move v5, v6

    .line 405
    goto :goto_0

    .line 411
    .restart local v0       #i:I
    .restart local v1       #i1:J
    .restart local v3       #i2:J
    .restart local v5       #n:I
    :cond_1
    const/4 v8, -0x1

    goto :goto_2

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v1           #i1:J
    .end local v3           #i2:J
    :cond_3
    sub-int v8, v6, v7

    goto :goto_2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "o"

    .prologue
    const/16 v3, 0x10

    .line 227
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/lit8 v1, v2, 0x1

    .line 228
    .local v1, newSize:I
    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 229
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v0

    .line 230
    .local v0, length:I
    if-le v1, v0, :cond_0

    .line 231
    if-ge v0, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 232
    :cond_0
    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 233
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    if-eq v2, p1, :cond_1

    .line 234
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 235
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void

    .line 231
    :cond_2
    mul-int/lit8 v2, v0, 0x2

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 213
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 6
    .parameter "index"
    .parameter "c"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, changed:Z
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 243
    .local v1, count:I
    iget v4, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 244
    add-int v4, p1, v1

    iget v5, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, p1

    invoke-virtual {p0, p1, v4, v5}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 245
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, index:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    move p1, v2

    .end local v2           #index:I
    .restart local p1
    goto :goto_0

    .line 250
    :cond_0
    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 2
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 219
    ushr-int/lit8 v0, p1, 0x1

    .line 220
    .local v0, index:I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 222
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 380
    return-void
.end method

.method protected abstract clearBuffer(II)V
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 2
    .parameter "start"
    .parameter "length"
    .parameter "out"

    .prologue
    .line 418
    shl-int/lit8 v0, p1, 0x1

    add-int v1, p1, p2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/SimpleVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 419
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 423
    ushr-int/lit8 v0, p1, 0x1

    .line 424
    .local v0, index:I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt v0, v1, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 427
    :goto_0
    return v1

    .line 426
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 427
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 432
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    :cond_0
    return-void

    .line 434
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 435
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 436
    .local v0, end:I
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    if-le v0, v2, :cond_2

    .line 437
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 438
    :cond_2
    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createPos(IZ)I
    .locals 2
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 102
    shl-int/lit8 v0, p1, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 2
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "value"

    .prologue
    .line 199
    if-ltz p1, :cond_0

    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p2, v1, :cond_1

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 201
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 202
    invoke-virtual {p0, v0, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 186
    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 4
    .parameter "fromPos"
    .parameter "toPos"
    .parameter "value"

    .prologue
    const/4 v3, -0x1

    .line 191
    if-ne p1, v3, :cond_0

    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    move v0, v2

    .line 192
    .local v0, i:I
    :goto_0
    if-ne p2, v3, :cond_1

    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    move v1, v2

    .line 193
    .local v1, j:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 194
    invoke-virtual {p0, v0, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    ushr-int/lit8 v2, p1, 0x1

    move v0, v2

    goto :goto_0

    .line 192
    .restart local v0       #i:I
    :cond_1
    ushr-int/lit8 v2, p2, 0x1

    move v1, v2

    goto :goto_1

    .line 195
    .restart local v1       #j:I
    :cond_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 130
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBuffer()Ljava/lang/Object;
.end method

.method protected abstract getBuffer(I)Ljava/lang/Object;
.end method

.method public abstract getBufferLength()I
.end method

.method public getElementKind()I
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x20

    return v0
.end method

.method public getNextKind(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 2
    .parameter "ipos"

    .prologue
    .line 137
    ushr-int/lit8 v0, p1, 0x1

    .line 138
    .local v0, index:I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lgnu/lists/SimpleVector;->eofValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public intAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 148
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v0

    return v0
.end method

.method public intAtBuffer(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 92
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 155
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public longAtBuffer(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected nextIndex(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 97
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 112
    :goto_0
    return v1

    .line 109
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 110
    .local v0, index:I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 311
    if-ltz p1, :cond_0

    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v1, :cond_1

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 313
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    .local v0, result:Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 315
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 316
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 317
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    .local v0, index:I
    if-gez v0, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    .line 325
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 326
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 327
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    move v1, v2

    .line 328
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 336
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v1, v4, :cond_2

    .line 338
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 339
    .local v3, value:Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 336
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0, v2, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .end local v3           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 351
    return v0
.end method

.method public removePos(II)V
    .locals 4
    .parameter "ipos"
    .parameter "count"

    .prologue
    .line 287
    ushr-int/lit8 v0, p1, 0x1

    .line 288
    .local v0, index:I
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-le v0, v3, :cond_0

    .line 289
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 291
    :cond_0
    if-ltz p2, :cond_2

    .line 293
    move v1, v0

    .line 294
    .local v1, ipos0:I
    add-int v2, v0, p2

    .line 302
    .local v2, ipos1:I
    :goto_0
    if-ltz v1, :cond_1

    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt v2, v3, :cond_3

    .line 303
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 298
    .end local v1           #ipos0:I
    .end local v2           #ipos1:I
    :cond_2
    add-int v1, v0, p2

    .line 299
    .restart local v1       #ipos0:I
    move v2, v0

    .line 300
    .restart local v2       #ipos1:I
    neg-int p2, p2

    goto :goto_0

    .line 304
    :cond_3
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v2, v1, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 305
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v3, p2

    iput v3, p0, Lgnu/lists/SimpleVector;->size:I

    .line 306
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v3, p2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 307
    return-void
.end method

.method protected removePosRange(II)V
    .locals 2
    .parameter "ipos0"
    .parameter "ipos1"

    .prologue
    .line 273
    ushr-int/lit8 p1, p1, 0x1

    .line 274
    ushr-int/lit8 p2, p2, 0x1

    .line 275
    if-lt p1, p2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p2, v1, :cond_1

    .line 278
    iget p2, p0, Lgnu/lists/SimpleVector;->size:I

    .line 279
    :cond_1
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, p2, p1, v1}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 280
    sub-int v0, p2, p1

    .line 281
    .local v0, count:I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 282
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    goto :goto_0
.end method

.method protected resizeShift(IIII)V
    .locals 7
    .parameter "oldGapStart"
    .parameter "oldGapEnd"
    .parameter "newGapStart"
    .parameter "newGapEnd"

    .prologue
    .line 58
    sub-int v4, p2, p1

    .line 59
    .local v4, oldGapSize:I
    sub-int v2, p4, p3

    .line 60
    .local v2, newGapSize:I
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    .line 61
    .local v5, oldLength:I
    sub-int v6, v5, v4

    add-int v3, v6, v2

    .line 62
    .local v3, newLength:I
    if-le v3, v5, :cond_0

    .line 64
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 65
    iput v3, p0, Lgnu/lists/SimpleVector;->size:I

    .line 67
    :cond_0
    sub-int v1, p1, p3

    .line 68
    .local v1, gapDelta:I
    if-ltz v1, :cond_2

    .line 70
    sub-int v0, v5, p2

    .line 71
    .local v0, endLength:I
    sub-int v6, v3, v0

    invoke-virtual {p0, p2, v6, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 72
    if-lez v1, :cond_1

    .line 73
    invoke-virtual {p0, p3, p4, v1}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0, p3, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 82
    return-void

    .line 77
    .end local v0           #endLength:I
    :cond_2
    sub-int v0, v3, p4

    .line 78
    .restart local v0       #endLength:I
    sub-int v6, v5, v0

    invoke-virtual {p0, v6, p4, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 79
    sub-int v6, p3, p1

    invoke-virtual {p0, p2, p1, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 358
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v1, v4, :cond_2

    .line 360
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 361
    .local v3, value:Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 358
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0, v2, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    .end local v3           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 373
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 174
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, old:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0
.end method

.method protected abstract setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setBufferLength(I)V
.end method

.method public setSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/16 v3, 0x10

    .line 39
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    .line 40
    .local v2, oldSize:I
    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 41
    if-ge p1, v2, :cond_1

    .line 42
    sub-int v3, v2, p1

    invoke-virtual {p0, p1, v3}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    .line 46
    .local v1, oldLength:I
    if-le p1, v1, :cond_0

    .line 48
    if-ge v1, v3, :cond_2

    move v0, v3

    .line 49
    .local v0, newLength:I
    :goto_1
    if-le p1, v0, :cond_3

    move v3, p1

    :goto_2
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    goto :goto_0

    .line 48
    .end local v0           #newLength:I
    :cond_2
    mul-int/lit8 v3, v1, 0x2

    move v0, v3

    goto :goto_1

    .restart local v0       #newLength:I
    :cond_3
    move v3, v0

    .line 49
    goto :goto_2
.end method

.method public shift(III)V
    .locals 1
    .parameter "srcStart"
    .parameter "dstStart"
    .parameter "count"

    .prologue
    .line 207
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, data:Ljava/lang/Object;
    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    return v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 2
    .parameter "lowBounds"
    .parameter "dimensions"
    .parameter "offset0"
    .parameter "factors"

    .prologue
    .line 455
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 456
    .local v0, array:Lgnu/lists/GeneralArray;
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 457
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 458
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 459
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 460
    iput-object p0, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgnu/lists/GeneralArray;->simple:Z

    .line 462
    return-object v0
.end method
