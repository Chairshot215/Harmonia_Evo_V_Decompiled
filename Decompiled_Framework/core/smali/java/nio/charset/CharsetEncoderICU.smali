.class final Ljava/nio/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final DEFAULT_REPLACEMENTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHARS:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[C

.field private outEnd:I

.field private output:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "US-ASCII"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-wide p5, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    array-length v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    goto :goto_0
.end method

.method private static makeReplacement(Ljava/lang/String;J)[B
    .locals 2

    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Llibcore/icu/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoderICU;
    .locals 9

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getAveBytesPerChar(J)F

    move-result v2

    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    int-to-float v3, v1

    invoke-static {p1, v5, v6}, Ljava/nio/charset/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    move-result-object v4

    new-instance v0, Ljava/nio/charset/CharsetEncoderICU;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/nio/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_1
    throw v1
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    return-void

    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    return-void
.end method

.method private updateCallback()V
    .locals 2

    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->canEncode(I)Z

    move-result v0

    return v0
.end method

.method public canEncode(I)Z
    .locals 2

    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeConverter;->canEncode(JI)Z

    move-result v0

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v3, v0, v4

    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    throw v0

    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8

    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    throw v0

    :cond_2
    :try_start_3
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    return-void
.end method

.method protected implReset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetCharToByte(J)V

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v2, v0, v2

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    return-void
.end method
