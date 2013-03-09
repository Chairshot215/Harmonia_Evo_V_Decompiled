.class Lorg/apache/xalan/processor/ProcessorAttributeSet;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorAttributeSet.java"


# static fields
.field static final serialVersionUID:J = -0x59d7578cbb3d8960L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemAttributeSet;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorAttributeSet;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/xalan/templates/Stylesheet;->setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
