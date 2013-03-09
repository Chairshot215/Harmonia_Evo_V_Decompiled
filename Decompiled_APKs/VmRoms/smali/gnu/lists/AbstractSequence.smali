.class public abstract Lgnu/lists/AbstractSequence;
.super Ljava/lang/Object;
.source "AbstractSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I
    .locals 1
    .parameter "seq1"
    .parameter "pos1"
    .parameter "seq2"
    .parameter "pos2"

    .prologue
    .line 696
    if-ne p0, p2, :cond_0

    .line 697
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    .line 698
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public static unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "text"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "o"

    .prologue
    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 245
    .local v0, pos:I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    .line 246
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 247
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 237
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, changed:Z
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v2

    .line 261
    .local v2, pos:I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v2

    .line 264
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 267
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 253
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 1
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 231
    const-string v0, "addPos"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 380
    return-void
.end method

.method public compare(II)I
    .locals 3
    .parameter "ipos1"
    .parameter "ipos2"

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 641
    .local v0, i1:I
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 642
    .local v1, i2:I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final compare(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)I
    .locals 2
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 647
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget v1, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    return v0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 808
    instance-of v0, p0, Lgnu/lists/Sequence;

    .line 809
    .local v0, isSequence:Z
    if-eqz v0, :cond_0

    .line 810
    const-string v1, "#sequence"

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 811
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 812
    if-eqz v0, :cond_1

    .line 813
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    .line 814
    :cond_1
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 785
    .local v0, next:I
    if-nez v0, :cond_0

    .line 786
    const/4 v1, 0x0

    .line 788
    :goto_0
    return v1

    .line 787
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 788
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 2
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 793
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    .line 796
    .local v0, it:I
    :goto_1
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 798
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 800
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_1

    .line 803
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, e:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const/4 v2, 0x0

    .line 185
    .end local v0           #e:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public copyPos(I)I
    .locals 0
    .parameter "ipos"

    .prologue
    .line 426
    return p1
.end method

.method public abstract createPos(IZ)I
.end method

.method public createRelativePos(IIZ)I
    .locals 1
    .parameter "pos"
    .parameter "delta"
    .parameter "isAfter"

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    return v0
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public endPos()I
    .locals 1

    .prologue
    .line 404
    const/4 v0, -0x1

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "ipos1"
    .parameter "ipos2"

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 718
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_0

    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_2

    .line 720
    :cond_0
    if-ne p0, p1, :cond_1

    move v6, v8

    .line 758
    .end local p1
    :goto_0
    return v6

    .restart local p1
    :cond_1
    move v6, v7

    .line 720
    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 722
    .local v2, it1:Ljava/util/Iterator;
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 733
    .local v3, it2:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 734
    .local v4, more1:Z
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 740
    .local v5, more2:Z
    if-eq v4, v5, :cond_4

    move v6, v7

    .line 741
    goto :goto_0

    .line 742
    :cond_4
    if-nez v4, :cond_5

    move v6, v8

    .line 743
    goto :goto_0

    .line 745
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 746
    .local v0, e1:Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 752
    .local v1, e2:Ljava/lang/Object;
    if-nez v0, :cond_6

    .line 754
    if-eqz v1, :cond_3

    move v6, v7

    .line 755
    goto :goto_0

    .line 757
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    .line 758
    goto :goto_0
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "value"

    .prologue
    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 106
    .local v0, i:I
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    .line 107
    .local v1, limit:I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v2

    if-gez v2, :cond_0

    .line 108
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 110
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 111
    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 91
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 2
    .parameter "fromPos"
    .parameter "toPos"
    .parameter "value"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    .line 98
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 99
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 101
    return-void
.end method

.method public firstAttributePos(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public firstChildPos(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public firstChildPos(ILgnu/lists/ItemPredicate;)I
    .locals 3
    .parameter "ipos"
    .parameter "predicate"

    .prologue
    const/4 v2, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 540
    .local v0, child:I
    if-nez v0, :cond_0

    move v1, v2

    .line 545
    :goto_0
    return v1

    .line 542
    :cond_0
    invoke-interface {p2, p0, v0}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 543
    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    goto :goto_0
.end method

.method protected fromEndIndex(I)I
    .locals 2
    .parameter "ipos"

    .prologue
    .line 445
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public get([I)Ljava/lang/Object;
    .locals 1
    .parameter "indexes"

    .prologue
    .line 50
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeLength()I
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method protected getContainingSequenceSize(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 455
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    return v0
.end method

.method public getEffectiveIndex([I)I
    .locals 1
    .parameter "indexes"

    .prologue
    .line 45
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method protected getIndexDifference(II)I
    .locals 2
    .parameter "ipos1"
    .parameter "ipos0"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getIterator()Lgnu/lists/SeqPosition;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 2
    .parameter "index"

    .prologue
    .line 201
    new-instance v0, Lgnu/lists/SeqPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    return-object v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 2
    .parameter "ipos"

    .prologue
    .line 206
    new-instance v0, Lgnu/lists/SeqPosition;

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method

.method public getLowBound(I)I
    .locals 1
    .parameter "dim"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getNextKind(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 596
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 2
    .parameter "ipos"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 605
    .local v0, index:I
    if-gtz v0, :cond_0

    .line 606
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 607
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getSize(I)I
    .locals 1
    .parameter "dim"

    .prologue
    .line 65
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public final gotoChildrenStart(Lgnu/lists/TreePosition;)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 519
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->getPos()I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 520
    .local v0, ipos:I
    if-nez v0, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 523
    :goto_0
    return v1

    .line 522
    :cond_0
    invoke-virtual {p1, p0, v0}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 523
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected gotoParent(Lgnu/lists/TreePosition;)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 567
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    .line 569
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->pop()V

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 2
    .parameter "ipos"

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasPrevious(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, hash:I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 708
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int v0, v3, v4

    .line 709
    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    .line 710
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, i:I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, iter:I
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, v:Ljava/lang/Object;
    if-nez p1, :cond_1

    if-nez v2, :cond_2

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    move v3, v0

    .line 129
    .end local v2           #v:Ljava/lang/Object;
    :goto_1
    return v3

    .line 123
    .restart local v2       #v:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v2           #v:Ljava/lang/Object;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 387
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 136
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    .local v1, n:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 138
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, e:Ljava/lang/Object;
    if-nez p1, :cond_1

    if-nez v0, :cond_0

    :goto_0
    move v2, v1

    .line 142
    .end local v0           #e:Ljava/lang/Object;
    :goto_1
    return v2

    .line 139
    .restart local v0       #e:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Object;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method protected nextIndex(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 440
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public final nextIndex(Lgnu/lists/SeqPosition;)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 628
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 2
    .parameter "startPos"
    .parameter "type"
    .parameter "endPos"
    .parameter "descend"

    .prologue
    .line 155
    if-eqz p4, :cond_0

    .line 156
    const-string v1, "nextMatching with descend"

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 157
    :cond_0
    move v0, p1

    .line 160
    .local v0, ipos:I
    :cond_1
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    if-ltz v1, :cond_2

    .line 161
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 162
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 163
    invoke-interface {p2, p0, v0}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 164
    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    const/4 v2, 0x1

    .line 491
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const/4 v1, 0x0

    .line 495
    :goto_0
    return v1

    .line 493
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 494
    .local v0, next:I
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    move v1, v0

    .line 495
    goto :goto_0
.end method

.method public parentPos(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 562
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    return v0
.end method

.method public previousPos(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 509
    :goto_0
    return v1

    .line 507
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 508
    .local v0, next:I
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    move v1, v0

    .line 509
    goto :goto_0
.end method

.method public rank()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected releasePos(I)V
    .locals 0
    .parameter "ipos"

    .prologue
    .line 412
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 325
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 327
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 328
    .local v0, ipos:I
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, result:Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 330
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 331
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 337
    .local v0, index:I
    if-gez v0, :cond_0

    .line 342
    :goto_0
    return v2

    .line 339
    :cond_0
    invoke-virtual {p0, v0, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    .line 340
    .local v1, ipos:I
    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 341
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    move v2, v3

    .line 342
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, changed:Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, iter:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, value:Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 355
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public removePos(II)V
    .locals 2
    .parameter "ipos"
    .parameter "count"

    .prologue
    .line 303
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 304
    .local v0, rpos:I
    if-ltz p2, :cond_0

    .line 305
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 308
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 309
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    goto :goto_0
.end method

.method protected removePosRange(II)V
    .locals 1
    .parameter "ipos0"
    .parameter "ipos1"

    .prologue
    .line 320
    const-string v0, "removePosRange"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, changed:Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, iter:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 367
    .local v2, value:Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "element"

    .prologue
    .line 86
    const-string v0, "set"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "indexes"
    .parameter "value"

    .prologue
    .line 55
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 2
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 613
    .local v0, index:I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 614
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 615
    :cond_0
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 2
    .parameter "ipos"
    .parameter "value"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 621
    .local v0, index:I
    if-nez v0, :cond_0

    .line 622
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 623
    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void
.end method

.method public abstract size()I
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 3
    .parameter "other"

    .prologue
    .line 685
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 686
    .local v0, id1:I
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 687
    .local v1, id2:I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startPos()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .parameter "fromIx"
    .parameter "toIx"

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)Lgnu/lists/Sequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 764
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget v1, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v0

    return-object v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 1
    .parameter "ipos0"
    .parameter "ipos1"

    .prologue
    .line 769
    new-instance v0, Lgnu/lists/SubSequence;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 652
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v4

    .line 653
    .local v4, len:I
    new-array v0, v4, [Ljava/lang/Object;

    .line 654
    .local v0, arr:[Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    .line 655
    .local v3, it:I
    const/4 v1, 0x0

    .line 656
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 658
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "arr"

    .prologue
    .line 663
    array-length v1, p1

    .line 664
    .local v1, alen:I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v5

    .line 665
    .local v5, len:I
    if-le v5, v1, :cond_0

    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 668
    .local v2, componentType:Ljava/lang/Class;
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 669
    move v1, v5

    .line 672
    .end local v2           #componentType:Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    .line 673
    .local v4, it:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v4}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    invoke-virtual {p0, v4}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p1, v3

    .line 673
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 677
    :cond_1
    if-ge v5, v1, :cond_2

    .line 678
    const/4 v6, 0x0

    aput-object v6, p1, v5

    .line 679
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 832
    .local v0, sbuf:Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/lists/Sequence;

    if-eqz v1, :cond_0

    .line 833
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 834
    :cond_0
    const-string v1, ", "

    invoke-virtual {p0, v1, v0}, Lgnu/lists/AbstractSequence;->toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 835
    instance-of v1, p0, Lgnu/lists/Sequence;

    if-eqz v1, :cond_1

    .line 836
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 837
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "sep"
    .parameter "sbuf"

    .prologue
    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, seen:Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 824
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 827
    :cond_1
    return-void
.end method

.method protected unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "text"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/AbstractSequence;->unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
