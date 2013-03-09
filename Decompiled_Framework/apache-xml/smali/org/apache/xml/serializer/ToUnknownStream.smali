.class public final Lorg/apache/xml/serializer/ToUnknownStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToUnknownStream.java"


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private m_firstElementLocalName:Ljava/lang/String;

.field private m_firstElementName:Ljava/lang/String;

.field private m_firstElementPrefix:Ljava/lang/String;

.field private m_firstElementURI:Ljava/lang/String;

.field private m_firstTagNotEmitted:Z

.field private m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_namespacePrefix:Ljava/util/Vector;

.field private m_namespaceURI:Ljava/util/Vector;

.field private m_needToCallStartDocument:Z

.field private m_setDoctypePublic_called:Z

.field private m_setDoctypeSystem_called:Z

.field private m_setMediaType_called:Z

.field private m_setVersion_called:Z

.field private m_wrapped_handler_not_initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    new-instance v0, Lorg/apache/xml/serializer/ToXMLStream;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method

.method private emitFirstTag()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->initStreamOutput()V

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v4, v5, v8, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v4, v2, v3, v9}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    :cond_2
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    :cond_3
    return-void
.end method

.method private flush()V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private initStreamOutput()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->isFirstElemHTML()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v6, "html"

    invoke-static {v6}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    :cond_1
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    :cond_2
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    return-void

    :cond_3
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private isFirstElemHTML()Z
    .locals 7

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/apache/xml/serializer/ToUnknownStream;->getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;

    move-result-object v0

    return-object v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/xml/serializer/SerializationHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->close()V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->comment([CII)V

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDTD()V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endEntity(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected firePseudoElement(Ljava/lang/String;)V
    .locals 6

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v3, 0xb

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

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

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndent()Z

    move-result v0

    return v0
.end method

.method public getIndentAmount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndentAmount()I

    move-result v0

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOmitXMLDeclaration()Z

    move-result v0

    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getStandalone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->serialize(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result v0

    return v0
.end method

.method public setIndent(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    return-void
.end method

.method public setIndentAmount(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    instance-of v0, p1, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

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

    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

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

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->firePseudoElement(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-super {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_3
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startEntity(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
