.class public Lorg/apache/xml/serializer/ToTextStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToTextStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public cdata([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCDATAEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->inTemporaryOutputState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public charactersRaw([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->comment([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCommentEvent([CII)V

    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method writeNormalizedChars([CIIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->getEncoding()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int v4, p2, p3

    const/16 v0, 0xa

    move v5, p2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-char v1, p1, v5

    const/16 v9, 0xa

    if-ne v9, v1, :cond_0

    if-eqz p4, :cond_0

    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v10, 0x0

    iget v11, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write([CII)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v9, v1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v1, p1, v5, v4}, Lorg/apache/xml/serializer/ToTextStream;->writeUTF16Surrogate(C[CII)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v10, "ER_ILLEGAL_CHARACTER"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v10, "ER_ILLEGAL_CHARACTER"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_5
    return-void
.end method
