.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field private static final END:I = 0x2

.field private static final FLUSH:I = 0x3

.field private static final INIT:I = 0x4

.field private static final ONGOING:I = 0x1

.field private static final READY:I


# instance fields
.field private final averageBytesPerChar:F

.field private final cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private finished:Z

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacementBytes:[B

.field private status:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar and maxBytesPerChar must both be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar is greater than maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    const/4 v0, 0x4

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz p5, :cond_3

    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    goto :goto_0
.end method

.method private allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method private implCanEncode(Ljava/nio/CharBuffer;)Z
    .locals 6

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    :cond_1
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "encoding already in progress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public canEncode(C)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v0

    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 2

    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, p1, v1, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, v1, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    :goto_2
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    iput v5, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    iput-boolean v6, p0, Ljava/nio/charset/CharsetEncoder;->finished:Z

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_5

    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v3

    :cond_6
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v3
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Ljava/nio/charset/CharsetEncoder;->finished:Z

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_0
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    if-nez p3, :cond_4

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-ne v4, v5, :cond_4

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_2
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v4, :cond_a

    if-eqz p3, :cond_7

    move v4, v5

    :goto_0
    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    :cond_5
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    :cond_6
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v4, :cond_c

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v7, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    array-length v7, v7

    if-ge v4, v7, :cond_2

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    move-object v4, v3

    goto :goto_1

    :cond_9
    move-object v4, v3

    goto :goto_1

    :cond_a
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v4, :cond_5

    if-eqz p3, :cond_b

    :goto_2
    iput v5, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    move-object v4, v3

    goto :goto_1

    :cond_b
    move v5, v6

    goto :goto_2

    :cond_c
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v4, :cond_3

    move-object v4, v3

    goto :goto_1
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    :cond_1
    return-object v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0

    return-void
.end method

.method protected implReset()V
    .locals 0

    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    iput-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v4, p1

    int-to-float v4, v4

    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacement length > maxBytesPerChar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad replacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    return-object p0
.end method

.method public final replacement()[B
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
