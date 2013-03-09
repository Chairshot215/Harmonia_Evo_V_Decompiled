.class Lorg/apache/xalan/processor/ProcessorOutputElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorOutputElem.java"


# static fields
.field static final serialVersionUID:J = 0x30c35205e6f98e86L


# instance fields
.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public addLiteralResultAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "cdata-section-elements"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "doctype-public"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "doctype-system"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "encoding"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setForeignAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public setIndent(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "indent"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "media-type"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Lorg/apache/xml/utils/QName;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "omit-xml-declaration"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStandalone(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "standalone"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v4, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v4}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setUid(I)V

    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorOutputElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/Stylesheet;->setOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v2, v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
