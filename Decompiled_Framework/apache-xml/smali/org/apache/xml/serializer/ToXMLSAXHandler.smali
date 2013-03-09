.class public final Lorg/apache/xml/serializer/ToXMLSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToXMLSAXHandler.java"


# instance fields
.field protected m_escapeSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method private ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_3

    const-string v10, ""

    :goto_1
    if-eqz v10, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v10, p1, v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "http://www.w3.org/2000/xmlns/"

    if-eqz v9, :cond_4

    const-string v2, "xmlns"

    :goto_2
    if-eqz v9, :cond_5

    const-string v3, "xmlns"

    :goto_3
    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void

    :cond_2
    move v9, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    move-object v2, v10

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private resetToXMLSAXHandler()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
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

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->closeStartTag()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->fireCharEvent([CII)V

    :cond_3
    return-void
.end method

.method public closeCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    return-void
.end method

.method protected closeStartTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v2, v1, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCommentEvent([CII)V

    :cond_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

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

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndDoc()V

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_2

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public indent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method protected popNamespace(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
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

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->resetToXMLSAXHandler()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    if-eqz p1, :cond_0

    const-string v1, "javax.xml.transform.enable-output-escaping"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "javax.xml.transform.disable-output-escaping"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, p3, v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v10, v0, 0x1

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "xmlns"

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    :goto_1
    return v11

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1
.end method
