.class public Lorg/apache/xpath/SourceTreeManager;
.super Ljava/lang/Object;
.source "SourceTreeManager.java"


# instance fields
.field private m_sourceTree:Ljava/util/Vector;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    return-void
.end method

.method public static getXMLReader(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;)Lorg/xml/sax/XMLReader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    instance-of v6, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v6, :cond_1

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_1
    if-nez v4, :cond_0

    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    :cond_0
    :try_start_3
    const-string v6, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p1, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_3
    move-exception v6

    goto :goto_2

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public findURIFromDoc(I)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/SourceTree;

    iget v3, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getNode(Ljavax/xml/transform/Source;)I
    .locals 6

    const/4 v4, -0x1

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/SourceTree;

    iget-object v5, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v4, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSourceTree(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    if-eq v2, v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    move-result v0

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/SourceTreeManager;->putDocumentInCache(ILjavax/xml/transform/Source;)V

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    instance-of v1, v9, Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    move-object v0, v9

    check-cast v0, Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putDocumentInCache(ILjavax/xml/transform/Source;)V
    .locals 4

    invoke-virtual {p0, p2}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    if-eq v0, p1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programmer\'s Error!  putDocumentInCache found reparse of doc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    new-instance v2, Lorg/apache/xpath/SourceTree;

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/xpath/SourceTree;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public removeDocumentFromCache(I)V
    .locals 3

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/SourceTree;

    if-eqz v1, :cond_2

    iget v2, v1, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    return-void
.end method

.method public resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-interface {v2, p2, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method
