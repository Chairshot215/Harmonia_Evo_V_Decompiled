.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field private static final END:I = 0x2

.field private static final FLUSH:I = 0x3

.field private static final INIT:I = 0x0

.field private static final ONGOING:I = 0x1


# instance fields
.field private final averageCharsPerByte:F

.field private final cs:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacementChars:Ljava/lang/String;

.field private status:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte and maxCharsPerByte must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte is greater than maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->cs:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    const-string v0, "\ufffd"

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    return-void
.end method

.method private allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->cs:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    :goto_1
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x3

    iput v3, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    return-object v1
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 7

    const/4 v5, 0x2

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    if-nez p3, :cond_1

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz p3, :cond_3

    move v4, v5

    :goto_1
    iput v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    :goto_2
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

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    :cond_6
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v4, :cond_9

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    :cond_7
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_9
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v4, :cond_8

    move-object v4, v3

    goto :goto_2
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3

    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    :cond_1
    return-object v0
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
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

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected implReset()V
    .locals 0

    return-void
.end method

.method public isAutoDetecting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCharsetDetected()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxCharsPerByte()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacement length > maxCharsPerByte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
