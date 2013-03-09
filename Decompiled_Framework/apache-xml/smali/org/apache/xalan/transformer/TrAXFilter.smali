.class public Lorg/apache/xalan/transformer/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "TrAXFilter.java"


# instance fields
.field private m_templates:Ljavax/xml/transform/Templates;

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Templates;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_templates:Ljavax/xml/transform/Templates;

    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method

.method private setupParse()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ER_NO_PARENT_FOR_FILTER"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public getTransformer()Lorg/apache/xalan/transformer/TransformerImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    const-string v7, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    :goto_1
    if-nez v6, :cond_1

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    :goto_2
    :try_start_3
    const-string v7, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-virtual {p0, v5}, Lorg/apache/xalan/transformer/TrAXFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    :goto_4
    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "ER_CANNOT_CALL_PARSE"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v1

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :catch_1
    move-exception v2

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move-object v5, v6

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v7, v0, Lorg/xml/sax/SAXException;

    if-eqz v7, :cond_4

    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_4
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_5
    return-void

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v7

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    return-void
.end method
