.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private m_DOMsystemID:Ljava/lang/String;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_optimize:Z

.field private m_source_location:Z

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v4, p1

    check-cast v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v8, Lorg/apache/xml/utils/StylesheetPIHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v8, v3, v0, v1, v2}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_0
    if-eqz v12, :cond_2

    :try_start_0
    new-instance v15, Lorg/apache/xml/utils/TreeWalker;

    new-instance v16, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v16 .. v16}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v0, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    invoke-virtual {v8}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object v16

    return-object v16

    :cond_1
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    move/from16 v16, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v16, :cond_3

    :try_start_2
    const-string v16, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v13

    :goto_3
    if-nez v13, :cond_4

    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    :cond_4
    invoke-interface {v13, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v13, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_1

    :catch_0
    move-exception v16

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16
    :try_end_4
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_2
    move-exception v14

    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    :catch_3
    move-exception v6

    :try_start_5
    new-instance v16, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v9

    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    :catch_5
    move-exception v16

    goto :goto_3

    :catch_6
    move-exception v16

    goto :goto_3

    :catch_7
    move-exception v16

    goto :goto_2
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDOMsystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_GET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    if-ne v1, p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v14, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    const-string v14, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v14, :cond_3

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    :cond_3
    if-nez v12, :cond_5

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v14, :cond_4

    :try_start_2
    const-string v14, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    :cond_5
    :goto_2
    if-nez v12, :cond_6

    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    :cond_6
    invoke-interface {v12, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    invoke-interface {v2}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object v14

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_5
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-direct {v14, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v14
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_7

    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_6
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_2
    move-exception v6

    throw v6

    :catch_3
    move-exception v6

    :try_start_7
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_8

    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v6

    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    :cond_7
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_6
    move-exception v6

    throw v6

    :catch_7
    move-exception v6

    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    :cond_8
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_8
    move-exception v14

    goto :goto_2

    :catch_9
    move-exception v14

    goto :goto_2

    :catch_a
    move-exception v14

    goto :goto_1
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v2}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v5}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v5, :cond_1

    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v5, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    throw v0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v4, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    throw v0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Lorg/apache/xalan/transformer/TrAXFilter;

    invoke-direct {v2, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    new-instance v2, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    throw v0
.end method

.method public processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v0

    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    new-instance v7, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v7}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v7, v8}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v3

    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_0

    :try_start_1
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v2

    throw v2

    :catch_2
    move-exception v2

    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_3
    move-exception v4

    throw v4

    :catch_4
    move-exception v1

    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_1

    :try_start_2
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    :catch_5
    move-exception v2

    throw v2

    :catch_6
    move-exception v2

    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NOT_SUPPORTED"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ERRORLISTENER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_SET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return-void

    :cond_1
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_UNSUPPORTED_FEATURE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method
