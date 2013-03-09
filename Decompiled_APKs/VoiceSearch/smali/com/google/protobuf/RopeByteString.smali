.class Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$1;,
        Lcom/google/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 66
    .local v0, f1:I
    const/4 v1, 0x1

    .line 69
    .local v1, f2:I
    :goto_0
    if-lez v1, :cond_0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int v4, v0, v1

    .line 72
    .local v4, temp:I
    move v0, v1

    .line 73
    move v1, v4

    .line 74
    goto :goto_0

    .line 78
    .end local v4           #temp:I
    :cond_0
    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    sput-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 82
    sget-object v6, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .locals 12
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 438
    const/4 v8, 0x0

    .line 439
    .local v8, thisOffset:I
    new-instance v7, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v7, p0, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 440
    .local v7, thisIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/protobuf/LiteralByteString;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/LiteralByteString;

    .line 442
    .local v10, thisString:Lcom/google/protobuf/LiteralByteString;
    const/4 v4, 0x0

    .line 443
    .local v4, thatOffset:I
    new-instance v3, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 444
    .local v3, thatIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/protobuf/LiteralByteString;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/LiteralByteString;

    .line 446
    .local v6, thatString:Lcom/google/protobuf/LiteralByteString;
    const/4 v1, 0x0

    .line 448
    .local v1, pos:I
    :goto_0
    invoke-virtual {v10}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v11

    sub-int v9, v11, v8

    .line 449
    .local v9, thisRemaining:I
    invoke-virtual {v6}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v11

    sub-int v5, v11, v4

    .line 450
    .local v5, thatRemaining:I
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    .local v0, bytesToCompare:I
    if-nez v8, :cond_0

    invoke-virtual {v10, v6, v4, v0}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v2

    .line 456
    .local v2, stillEqual:Z
    :goto_1
    if-nez v2, :cond_1

    .line 457
    const/4 v11, 0x0

    .line 463
    :goto_2
    return v11

    .line 453
    .end local v2           #stillEqual:Z
    :cond_0
    invoke-virtual {v6, v10, v8, v0}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v2

    goto :goto_1

    .line 460
    .restart local v2       #stillEqual:Z
    :cond_1
    add-int/2addr v1, v0

    .line 461
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-lt v1, v11, :cond_3

    .line 462
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v1, v11, :cond_2

    .line 463
    const/4 v11, 0x1

    goto :goto_2

    .line 465
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 468
    :cond_3
    if-ne v0, v9, :cond_4

    .line 469
    const/4 v8, 0x0

    .line 470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #thisString:Lcom/google/protobuf/LiteralByteString;
    check-cast v10, Lcom/google/protobuf/LiteralByteString;

    .line 474
    .restart local v10       #thisString:Lcom/google/protobuf/LiteralByteString;
    :goto_3
    if-ne v0, v5, :cond_5

    .line 475
    const/4 v4, 0x0

    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #thatString:Lcom/google/protobuf/LiteralByteString;
    check-cast v6, Lcom/google/protobuf/LiteralByteString;

    .restart local v6       #thatString:Lcom/google/protobuf/LiteralByteString;
    goto :goto_0

    .line 472
    :cond_4
    add-int/2addr v8, v0

    goto :goto_3

    .line 478
    :cond_5
    add-int/2addr v4, v0

    goto :goto_0
.end method


# virtual methods
.method protected copyToInternal([BIII)V
    .locals 5
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "numberToCopy"

    .prologue
    .line 332
    add-int v1, p2, p4

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 339
    .local v0, leftLength:I
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 340
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v4, p4, v0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    if-ne p1, p0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 401
    :cond_1
    instance-of v4, p1, Lcom/google/protobuf/ByteString;

    if-nez v4, :cond_2

    move v2, v3

    .line 402
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 405
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 406
    .local v1, otherByteString:Lcom/google/protobuf/ByteString;
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 407
    goto :goto_0

    .line 409
    :cond_3
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-eqz v4, :cond_0

    .line 418
    iget v2, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eqz v2, :cond_4

    .line 419
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 420
    .local v0, cachedOtherHash:I
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eq v2, v0, :cond_4

    move v2, v3

    .line 421
    goto :goto_0

    .line 425
    .end local v0           #cachedOtherHash:I
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 492
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 494
    .local v0, h:I
    if-nez v0, :cond_1

    .line 495
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 496
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    .line 497
    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 500
    :cond_0
    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 502
    :cond_1
    return v0
.end method

.method public isValidUtf8()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {v3, v2, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 375
    .local v0, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 376
    .local v1, state:I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 6
    .parameter "h"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 512
    add-int v2, p2, p3

    .line 513
    .local v2, toIndex:I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    .line 520
    :goto_0
    return v3

    .line 515
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 516
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0

    .line 518
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 519
    .local v0, leftLength:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v1

    .line 520
    .local v1, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0
.end method

.method protected partialIsValidUtf8(III)I
    .locals 6
    .parameter "state"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 381
    add-int v2, p2, p3

    .line 382
    .local v2, toIndex:I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    .line 389
    :goto_0
    return v3

    .line 384
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0

    .line 387
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 388
    .local v0, leftLength:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 389
    .local v1, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
