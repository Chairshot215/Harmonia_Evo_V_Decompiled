.class public Lorg/apache/xalan/processor/ProcessorInclude;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorInclude.java"


# static fields
.field static final serialVersionUID:J = -0x3f6c2e64b6cc7fc9L


# instance fields
.field private m_href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method private getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v3

    :cond_0
    return-object v3
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-object v0
.end method

.method protected getStylesheetInclErr()Ljava/lang/String;
    .locals 1

    const-string v0, "ER_STYLESHEET_INCLUDES_ITSELF"

    return-object v0
.end method

.method protected getStylesheetType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v20

    const/16 v16, 0x0

    if-eqz v20, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekSourceFromURIResolver()Ljavax/xml/transform/Source;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, v16

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekImportURL()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    :cond_0
    new-instance v21, Lorg/apache/xml/utils/TreeWalker;

    new-instance v22, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v22 .. v22}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v18, :cond_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v15

    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v9

    :goto_1
    const-string v22, "ER_IOEXCEPTION"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object/from16 v17, v16

    if-nez v17, :cond_7

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v16, Ljavax/xml/transform/stream/StreamSource;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object v16

    const/4 v13, 0x0

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, v16

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v14, v0

    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    :cond_3
    invoke-static/range {v16 .. v16}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v8

    if-nez v13, :cond_5

    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v22

    if-eqz v22, :cond_4

    :try_start_6
    const-string v22, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v13

    :cond_5
    :goto_4
    if-nez v13, :cond_6

    :try_start_8
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    :cond_6
    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v8}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-interface {v13, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v19

    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    :try_start_b
    new-instance v22, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v22

    :catch_4
    move-exception v6

    new-instance v22, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v22

    :catchall_0
    move-exception v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    throw v22
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_2

    :catch_5
    move-exception v19

    move-object/from16 v16, v17

    goto :goto_5

    :catch_6
    move-exception v9

    move-object/from16 v16, v17

    goto/16 :goto_1

    :catch_7
    move-exception v22

    goto :goto_4

    :catch_8
    move-exception v22

    goto :goto_4

    :catch_9
    move-exception v22

    goto :goto_3

    :cond_7
    move-object/from16 v16, v17

    goto/16 :goto_2
.end method

.method protected processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 0

    return-object p2
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorInclude;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xalan/processor/ProcessorInclude;->getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->importStackContains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetInclErr()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportURL(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportSource(Ljavax/xml/transform/Source;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetType()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorInclude;->parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    throw v4
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
.end method
