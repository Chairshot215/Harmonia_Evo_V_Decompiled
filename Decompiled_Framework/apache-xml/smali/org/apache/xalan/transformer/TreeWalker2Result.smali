.class public Lorg/apache/xalan/transformer/TreeWalker2Result;
.super Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.source "TreeWalker2Result.java"


# instance fields
.field m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field m_startNode:I

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V

    iput-object p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p2, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    :cond_0
    return-void
.end method

.method protected startNode(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v11, -0x1

    const/4 v10, 0x1

    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    :try_start_0
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v9

    if-ne v10, v9, :cond_3

    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    iget v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    if-eq v9, p1, :cond_1

    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v9, v5, v4, v2}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    const/4 v9, 0x1

    invoke-interface {v1, p1, v9}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v6

    :goto_1
    if-eq v11, v6, :cond_2

    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v9, v1, v6}, Lorg/apache/xalan/serialize/SerializerUtils;->ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V

    const/4 v9, 0x1

    invoke-interface {v1, p1, v6, v9}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v6

    goto :goto_1

    :cond_2
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_2
    if-eq v11, v0, :cond_0

    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v9, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method public traverse(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iput p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    return-void
.end method
