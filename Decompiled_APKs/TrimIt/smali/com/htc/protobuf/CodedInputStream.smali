.class public final Lcom/htc/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    .line 479
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    .line 482
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->sizeLimit:I

    .line 496
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    .line 497
    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 498
    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 499
    iput-object p1, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 500
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    .line 479
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    .line 482
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->sizeLimit:I

    .line 489
    iput-object p1, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    .line 490
    add-int v0, p2, p3

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 491
    iput p2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 493
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 441
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .parameter "n"

    .prologue
    .line 455
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/htc/protobuf/CodedInputStream;
    .locals 1
    .parameter "input"

    .prologue
    .line 55
    new-instance v0, Lcom/htc/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/htc/protobuf/CodedInputStream;
    .locals 2
    .parameter "buf"

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/CodedInputStream;->newInstance([BII)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/htc/protobuf/CodedInputStream;
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 70
    new-instance v0, Lcom/htc/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/protobuf/CodedInputStream;-><init>([BII)V

    return-object v0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, result:I
    const/4 v1, 0x0

    .line 360
    .local v1, offset:I
    :goto_0
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3

    .line 361
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 362
    .local v0, b:I
    if-ne v0, v5, :cond_0

    .line 363
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 365
    :cond_0
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    .line 366
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_1

    move v3, v2

    .line 377
    .end local v2           #result:I
    .local v3, result:I
    :goto_1
    return v3

    .line 360
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 371
    :cond_2
    add-int/lit8 v1, v1, 0x7

    .end local v0           #b:I
    :cond_3
    const/16 v4, 0x40

    if-ge v1, v4, :cond_5

    .line 372
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 373
    .restart local v0       #b:I
    if-ne v0, v5, :cond_4

    .line 374
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 376
    :cond_4
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    move v3, v2

    .line 377
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_1

    .line 380
    .end local v0           #b:I
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_5
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 575
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 576
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int v0, v1, v2

    .line 577
    .local v0, bufferEnd:I
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 579
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    .line 580
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(Z)Z
    .locals 5
    .parameter "mustSucceed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 626
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    iget v4, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v4, :cond_0

    .line 627
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_0
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v4, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    if-ne v1, v4, :cond_2

    .line 633
    if-eqz p1, :cond_1

    .line 634
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_1
    move v1, v3

    .line 663
    :goto_0
    return v1

    .line 640
    :cond_2
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v4, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 642
    iput v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 643
    iget-object v1, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 644
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v2, :cond_5

    .line 645
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    .line 649
    :cond_5
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_7

    .line 650
    iput v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 651
    if-eqz p1, :cond_6

    .line 652
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_6
    move v1, v3

    .line 654
    goto :goto_0

    .line 657
    :cond_7
    invoke-direct {p0}, Lcom/htc/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 658
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int v0, v1, v2

    .line 660
    .local v0, totalBytesRead:I
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->sizeLimit:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 661
    :cond_8
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 663
    :cond_9
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 105
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .prologue
    .line 601
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 602
    const/4 v1, -0x1

    .line 606
    :goto_0
    return v1

    .line 605
    :cond_0
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int v0, v1, v2

    .line 606
    .local v0, currentAbsolutePosition:I
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 615
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .parameter "oldLimit"

    .prologue
    .line 592
    iput p1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    .line 593
    invoke-direct {p0}, Lcom/htc/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 594
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 559
    if-gez p1, :cond_0

    .line 560
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 562
    :cond_0
    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 563
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    .line 564
    .local v0, oldLimit:I
    if-le p1, v0, :cond_1

    .line 565
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 567
    :cond_1
    iput p1, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    .line 569
    invoke-direct {p0}, Lcom/htc/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 571
    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBytes()Lcom/htc/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 265
    .local v1, size:I
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 268
    iget-object v2, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v1}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    .line 269
    .local v0, result:Lcom/htc/protobuf/ByteString;
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 273
    .end local v0           #result:Lcom/htc/protobuf/ByteString;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/ByteString;->copyFrom([B)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .parameter "fieldNumber"
    .parameter "builder"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 218
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 220
    :cond_0
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    .line 221
    invoke-interface {p2, p0, p3}, Lcom/htc/protobuf/MessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;

    .line 222
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 224
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    .line 225
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .parameter "builder"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 251
    .local v0, length:I
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 252
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 254
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 255
    .local v1, oldLimit:I
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    .line 256
    invoke-interface {p1, p0, p2}, Lcom/htc/protobuf/MessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 258
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->recursionDepth:I

    .line 259
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedInputStream;->popLimit(I)V

    .line 260
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 675
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 12
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    if-gez p1, :cond_0

    .line 688
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 691
    :cond_0
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v9, v10

    add-int/2addr v9, p1

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    if-le v9, v10, :cond_1

    .line 693
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 695
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 698
    :cond_1
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v9, v10

    if-gt p1, v9, :cond_3

    .line 700
    new-array v0, p1, [B

    .line 701
    .local v0, bytes:[B
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 783
    :cond_2
    :goto_0
    return-object v0

    .line 704
    .end local v0           #bytes:[B
    :cond_3
    const/16 v9, 0x1000

    if-ge p1, v9, :cond_5

    .line 709
    new-array v0, p1, [B

    .line 710
    .restart local v0       #bytes:[B
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int v7, v9, v10

    .line 711
    .local v7, pos:I
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 717
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 719
    :goto_1
    sub-int v9, p1, v7

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    if-le v9, v10, :cond_4

    .line 720
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v9, v10, v0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v7, v9

    .line 722
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 723
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_1

    .line 726
    :cond_4
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    sub-int v11, p1, v7

    invoke-static {v9, v10, v0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 727
    sub-int v9, p1, v7

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    .line 741
    .end local v0           #bytes:[B
    .end local v7           #pos:I
    :cond_5
    iget v5, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 742
    .local v5, originalBufferPos:I
    iget v6, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 745
    .local v6, originalBufferSize:I
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 746
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 747
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 750
    sub-int v9, v6, v5

    sub-int v8, p1, v9

    .line 751
    .local v8, sizeLeft:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v2, chunks:Ljava/util/List;,"Ljava/util/List<[B>;"
    :goto_2
    if-lez v8, :cond_9

    .line 754
    const/16 v9, 0x1000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v1, v9, [B

    .line 755
    .local v1, chunk:[B
    const/4 v7, 0x0

    .line 756
    .restart local v7       #pos:I
    :goto_3
    array-length v9, v1

    if-ge v7, v9, :cond_8

    .line 757
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v9, :cond_6

    const/4 v4, -0x1

    .line 759
    .local v4, n:I
    :goto_4
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 760
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 757
    .end local v4           #n:I
    :cond_6
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v10, v1

    sub-int/2addr v10, v7

    invoke-virtual {v9, v1, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_4

    .line 762
    .restart local v4       #n:I
    :cond_7
    iget v9, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 763
    add-int/2addr v7, v4

    .line 764
    goto :goto_3

    .line 765
    .end local v4           #n:I
    :cond_8
    array-length v9, v1

    sub-int/2addr v8, v9

    .line 766
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 770
    .end local v1           #chunk:[B
    .end local v7           #pos:I
    :cond_9
    new-array v0, p1, [B

    .line 773
    .restart local v0       #bytes:[B
    sub-int v7, v6, v5

    .line 774
    .restart local v7       #pos:I
    iget-object v9, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v9, v5, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 778
    .restart local v1       #chunk:[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v0, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    array-length v9, v1

    add-int/2addr v7, v9

    goto :goto_5
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 401
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 402
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 403
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 404
    .local v3, b4:B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0xff

    .line 412
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 413
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 414
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 415
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 416
    .local v3, b4:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v4

    .line 417
    .local v4, b5:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v5

    .line 418
    .local v5, b6:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v6

    .line 419
    .local v6, b7:B
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v7

    .line 420
    .local v7, b8:B
    int-to-long v8, v0

    and-long/2addr v8, v13

    int-to-long v10, v1

    and-long/2addr v10, v13

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    and-long/2addr v10, v13

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    and-long/2addr v10, v13

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    and-long/2addr v10, v13

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    and-long/2addr v10, v13

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    and-long/2addr v10, v13

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    and-long/2addr v10, v13

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 318
    .local v2, tmp:B
    if-ltz v2, :cond_1

    move v1, v2

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    and-int/lit8 v1, v2, 0x7f

    .line 322
    .local v1, result:I
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 323
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_0

    .line 325
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 326
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 327
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 329
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 330
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 331
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 333
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 334
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 335
    if-gez v2, :cond_0

    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    if-gez v3, :cond_0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_5
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 387
    .local v1, result:J
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 389
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 390
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 391
    return-wide v1

    .line 393
    :cond_0
    add-int/lit8 v3, v3, 0x7

    .line 394
    goto :goto_0

    .line 395
    .end local v0           #b:B
    :cond_1
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 200
    .local v1, size:I
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 204
    .local v0, result:Ljava/lang/String;
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 208
    .end local v0           #result:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->lastTag:I

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->lastTag:I

    .line 87
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->lastTag:I

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 91
    :cond_1
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->lastTag:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/htc/protobuf/MessageLite$Builder;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/protobuf/CodedInputStream;->readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 244
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 550
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 4
    .parameter "limit"

    .prologue
    .line 510
    if-gez p1, :cond_0

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_0
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    .line 515
    .local v0, oldLimit:I
    iput p1, p0, Lcom/htc/protobuf/CodedInputStream;->recursionLimit:I

    .line 516
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 4
    .parameter "limit"

    .prologue
    .line 536
    if-gez p1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    iget v0, p0, Lcom/htc/protobuf/CodedInputStream;->sizeLimit:I

    .line 541
    .local v0, oldLimit:I
    iput p1, p0, Lcom/htc/protobuf/CodedInputStream;->sizeLimit:I

    .line 542
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-static {p1}, Lcom/htc/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    .line 136
    :goto_0
    return v0

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian64()J

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->skipMessage()V

    .line 128
    invoke-static {p1}, Lcom/htc/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    goto :goto_0

    .line 133
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawLittleEndian32()I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 149
    .local v0, tag:I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 794
    if-gez p1, :cond_0

    .line 795
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 798
    :cond_0
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    if-le v2, v3, :cond_1

    .line 800
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->currentLimit:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 802
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 805
    :cond_1
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    .line 807
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 825
    :cond_2
    return-void

    .line 810
    :cond_3
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    sub-int v1, v2, v3

    .line 811
    .local v1, pos:I
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 812
    iput v4, p0, Lcom/htc/protobuf/CodedInputStream;->bufferPos:I

    .line 813
    iput v4, p0, Lcom/htc/protobuf/CodedInputStream;->bufferSize:I

    .line 816
    :goto_0
    if-ge v1, p1, :cond_2

    .line 817
    iget-object v2, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v2, :cond_4

    const/4 v0, -0x1

    .line 818
    .local v0, n:I
    :goto_1
    if-gtz v0, :cond_5

    .line 819
    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 817
    .end local v0           #n:I
    :cond_4
    iget-object v2, p0, Lcom/htc/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    sub-int v3, p1, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 821
    .restart local v0       #n:I
    :cond_5
    add-int/2addr v1, v0

    .line 822
    iget v2, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/htc/protobuf/CodedInputStream;->totalBytesRetired:I

    goto :goto_0
.end method
