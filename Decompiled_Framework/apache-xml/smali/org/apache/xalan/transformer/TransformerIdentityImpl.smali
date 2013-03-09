.class public Lorg/apache/xalan/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerIdentityImpl.java"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field m_flushedStartDoc:Z

.field m_foundFirstElement:Z

.field private m_isSecureProcessing:Z

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_params:Ljava/util/Hashtable;

.field private m_result:Ljavax/xml/transform/Result;

.field private m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_serializer:Lorg/apache/xml/serializer/Serializer;

.field private m_systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    return-void
.end method

.method private createResultContentHandler(Ljavax/xml/transform/Result;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v15, :cond_4

    move-object/from16 v11, p1

    check-cast v11, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/apache/xml/serializer/Serializer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/apache/xml/serializer/Serializer;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/DTDHandler;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/DTDHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/ext/DeclHandler;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/ext/DeclHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v15, :cond_a

    move-object/from16 v5, p1

    check-cast v5, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v9, :cond_7

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v15, 0x9

    if-ne v15, v14, :cond_6

    move-object v15, v9

    check-cast v15, Lorg/w3c/dom/Document;

    move-object v3, v15

    :goto_1
    const/16 v15, 0xb

    if-ne v15, v14, :cond_9

    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    check-cast v9, Lorg/w3c/dom/DocumentFragment;

    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    :goto_2
    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    :cond_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_8

    :try_start_1
    const-string v15, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :catch_0
    move-exception v10

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    :cond_9
    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v15, :cond_12

    move-object/from16 v13, p1

    check-cast v13, Ljavax/xml/transform/stream/StreamResult;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v15}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    :goto_4
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    :cond_b
    :try_start_4
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v6

    const-string v15, "file:///"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_e

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_d
    :goto_5
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_e
    const/4 v15, 0x7

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_f
    const-string v15, "file:/"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_10

    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_10
    const/4 v15, 0x5

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_11
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_12
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_2
    move-exception v15

    goto/16 :goto_3
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public clearParameters()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

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

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final flushStartDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->clearParameters()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
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

    const-string v1, "ER_NULL_ERROR_HANDLER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_1
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_RESULT_NULL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

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

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    invoke-static {p1, p2, v3, v4}, Lorg/apache/xalan/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eq v1, v3, :cond_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/DTDHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/DTDHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_1
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

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

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    if-nez v22, :cond_0

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v22

    if-eqz v22, :cond_2

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v22

    if-nez v22, :cond_1

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    if-eqz v22, :cond_2

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v22

    if-nez v22, :cond_4

    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v17

    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v17, :cond_3

    :try_start_1
    invoke-interface/range {v16 .. v17}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c

    :cond_3
    move-object/from16 p1, v16

    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v8, v0

    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    if-eqz v6, :cond_b

    :try_start_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :try_start_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v22, 0x0

    array-length v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->characters([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception v9

    :goto_3
    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_8
    :try_start_7
    new-instance v19, Lorg/apache/xml/serializer/TreeWalker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v22

    :try_start_8
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V

    :cond_9
    throw v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v15

    :try_start_9
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_a
    throw v22

    :cond_b
    :try_start_b
    const-string v22, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v22, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_c
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v21

    if-nez v21, :cond_d

    new-instance v22, Ljavax/xml/transform/TransformerException;

    const-string v23, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_d
    invoke-virtual/range {v21 .. v21}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual/range {v21 .. v21}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_e
    const/4 v14, 0x0

    const/4 v12, 0x0

    :try_start_c
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v14

    :cond_f
    if-nez v14, :cond_16

    :try_start_d
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v14

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v10, p0

    :try_start_e
    invoke-interface {v14, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    instance-of v0, v10, Lorg/xml/sax/DTDHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object v0, v10

    check-cast v0, Lorg/xml/sax/DTDHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_10
    :try_start_f
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_11

    const-string v22, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    const-string v22, "http://xml.org/sax/properties/declaration-handler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_12
    :goto_6
    :try_start_10
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    const-string v22, "http://xml.org/sax/handlers/LexicalHandler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    const-string v22, "http://xml.org/sax/handlers/DeclHandler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_14
    :goto_7
    :try_start_11
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    if-eqz v12, :cond_15

    :try_start_12
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :goto_8
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    goto/16 :goto_2

    :catch_2
    move-exception v15

    :try_start_14
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    :catch_3
    move-exception v20

    :try_start_15
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v18

    :goto_9
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    check-cast v18, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-result-object v18

    goto :goto_9

    :cond_16
    :try_start_16
    const-string v22, "http://xml.org/sax/features/namespace-prefixes"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_5

    :catch_4
    move-exception v22

    goto/16 :goto_5

    :cond_17
    :try_start_17
    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :catchall_2
    move-exception v22

    if-eqz v12, :cond_18

    :try_start_18
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_18
    throw v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :catch_5
    move-exception v15

    :try_start_19
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    :catch_6
    move-exception v11

    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :catch_7
    move-exception v23

    goto/16 :goto_4

    :catch_8
    move-exception v22

    goto :goto_8

    :catch_9
    move-exception v22

    goto/16 :goto_7

    :catch_a
    move-exception v22

    goto/16 :goto_6

    :catch_b
    move-exception v22

    goto/16 :goto_1

    :catch_c
    move-exception v9

    move-object/from16 p1, v16

    goto/16 :goto_3
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
