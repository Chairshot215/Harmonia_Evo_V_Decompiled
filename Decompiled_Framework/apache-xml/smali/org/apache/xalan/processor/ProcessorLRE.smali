.class public Lorg/apache/xalan/processor/ProcessorLRE;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorLRE.java"


# static fields
.field static final serialVersionUID:J = -0x14ae5165319c871cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method

.method private declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getIsLiteralResultAsStylesheet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v33

    const/16 v21, 0x0

    const/16 v27, 0x0

    if-nez v33, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v31

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    const-string v8, "stylesheet"

    const-string v11, "xsl:stylesheet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v11}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/processor/ProcessorLRE;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    :try_start_2
    new-instance v35, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct/range {v35 .. v35}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v29

    if-eqz v29, :cond_0

    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    const/16 v27, 0x1

    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    new-instance v30, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct/range {v30 .. v30}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface/range {p5 .. p5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v32

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v41

    if-eqz v9, :cond_2

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v7

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :catch_0
    move-exception v40

    new-instance v6, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v40

    invoke-direct {v6, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v38

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v38

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_2
    :try_start_3
    const-string v6, "xmlns:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "xmlns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_4
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, v30

    move-object v10, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_5
    move-object/from16 p5, v30

    :try_start_4
    const-string v6, "stylesheet"

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v5, v2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    new-instance v39, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct/range {v39 .. v39}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    if-eqz v35, :cond_6

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplate;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    new-instance v10, Lorg/apache/xpath/XPath;

    const-string v11, "/"

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v15

    move-object/from16 v12, v36

    move-object/from16 v13, v36

    invoke-direct/range {v10 .. v15}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v33

    const/16 v21, 0x1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorLRE;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    move-result-object v16

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    :goto_2
    if-eqz v33, :cond_9

    move-object/from16 v0, v33

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_e

    move-object/from16 v0, v33

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v26

    :cond_8
    :goto_3
    if-eqz v26, :cond_11

    :cond_9
    const/16 v19, 0x0

    if-eqz v26, :cond_12

    :try_start_6
    new-instance v20, Lorg/apache/xalan/templates/ElemExtensionCall;

    invoke-direct/range {v20 .. v20}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    move-object/from16 v19, v20

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    move-object/from16 v0, v19

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_a

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setIsLiteralResultAsStylesheet(Z)V
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_a
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    if-nez v26, :cond_b

    move-object/from16 v0, v19

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_b

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    new-instance v19, Lorg/apache/xalan/templates/ElemExtensionCall;

    invoke-direct/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void

    :catch_2
    move-exception v18

    invoke-virtual/range {v36 .. v36}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/ProcessorLRE;->declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v8, "WG_OLD_XSLT_NS"

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_e
    move-object/from16 v0, v33

    instance-of v6, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v6, :cond_8

    move-object/from16 v0, v33

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_10

    if-eqz p2, :cond_10

    const-string v6, "http://xml.apache.org/xalan"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "http://xml.apache.org/xslt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_3

    :cond_10
    const/16 v28, 0x1

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v33

    goto/16 :goto_2

    :cond_12
    if-eqz v25, :cond_13

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0

    goto/16 :goto_4

    :cond_13
    if-eqz v28, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0
    :try_end_8
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_3
    move-exception v24

    :try_start_9
    const-string v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_5

    :catch_4
    move-exception v23

    const-string v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5
.end method
