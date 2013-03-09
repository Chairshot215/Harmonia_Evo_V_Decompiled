.class public Lorg/apache/xalan/serialize/SerializerUtils;
.super Ljava/lang/Object;
.source "SerializerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v8}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lorg/apache/xalan/serialize/SerializerUtils;->isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    :try_start_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    invoke-static {p0, v1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p0, v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public static isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z
    .locals 4

    const/16 v2, 0xd

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v3, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1, v2, p0}, Lorg/apache/xml/dtm/DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {p3, p1, v5}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v1

    :goto_0
    const/4 v5, -0x1

    if-eq v5, v1, :cond_2

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    const/4 v5, 0x1

    invoke-interface {p3, p1, v1, v5}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v5, 0xd

    if-ne p2, v5, :cond_2

    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v3

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
