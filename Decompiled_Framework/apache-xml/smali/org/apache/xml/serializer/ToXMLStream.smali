.class public Lorg/apache/xml/serializer/ToXMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToXMLStream.java"


# instance fields
.field private m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "xml"

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->initCDATA()V

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method private getXMLVersion()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v3, "1.0"

    :goto_0
    return-object v3

    :cond_1
    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "1.1"

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_XML_VERSION_NOT_SUPPORTED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    new-instance v4, Ljavax/xml/transform/TransformerException;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v4, v1, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v3, "1.0"

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private resetToXMLStream()V
    .locals 0

    return-void
.end method


# virtual methods
.method public CopyFrom(Lorg/apache/xml/serializer/ToXMLStream;)V
    .locals 2

    iget-object v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToXMLStream;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setOmitXMLDeclaration(Z)V

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iget-object v1, p1, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-boolean v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getIndentAmount()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setIndentAmount(I)V

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iget-boolean v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypeSystem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypePublic(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setStandalone(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setMediaType(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v7, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p6, :cond_0

    const-string v7, "xmlns"

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_0
    return-void

    :cond_1
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v7, :cond_2

    new-instance v7, Ljavax/xml/transform/TransformerException;

    iget-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v7, v2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v7}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    :cond_2
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    and-int/lit8 v3, p3, 0x1

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/xml/serializer/ToXMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushWriter()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endPreserving()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v0

    goto :goto_0
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToXMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startNonEscaping()V

    :goto_1
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->endNonEscaping()V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    :cond_6
    const-string v3, "?>"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    if-lez v1, :cond_7

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    const-string v3, "? >"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8
    :goto_3
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startDocumentInternal()V

    goto :goto_2

    :cond_a
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startDocumentInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v5, :cond_0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    iput-boolean v6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getXMLVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " standalone=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v5, "<?xml version=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v5, "\" encoding=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v5, "?>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :cond_3
    const-string v2, ""

    goto :goto_1
.end method

.method public startPreserving()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    return-void
.end method
