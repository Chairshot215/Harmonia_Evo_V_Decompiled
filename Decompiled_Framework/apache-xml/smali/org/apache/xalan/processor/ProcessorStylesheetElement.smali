.class public Lorg/apache/xalan/processor/ProcessorStylesheetElement;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorStylesheetElement.java"


# static fields
.field static final serialVersionUID:J = -0xc2e917946bf5818L


# direct methods
.method public constructor <init>()V
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

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method

.method protected getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    :cond_0
    return-object v0
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    invoke-virtual {p0, p1, p4, p5, v6}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void

    :catch_0
    move-exception v5

    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v4

    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    new-instance v1, Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/xalan/templates/Stylesheet;

    invoke-direct {v2, v0}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/Stylesheet;->setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
