.class Lorg/apache/xalan/processor/ProcessorDecimalFormat;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorDecimalFormat.java"


# static fields
.field static final serialVersionUID:J = -0x461f85c3bca34d9bL


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;-><init>(I)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorDecimalFormat;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method
